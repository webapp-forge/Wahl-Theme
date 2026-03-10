#!/usr/bin/env bash
set -euo pipefail

THEME_ROOT="custom/plugins/WahlBaseTheme/src"
VIEWS_DIR="$THEME_ROOT/Resources/views"
SNIPPET_ROOT="$THEME_ROOT/Resources/snippet"

LOCALES=("de-DE" "de-AT" "fr-FR" "it-IT")
BASENAME="storefront"
NAMESPACE_PREFIX="wahl."   # <- nur Keys aus diesem Namespace werden gepflegt

need_cmd () {
  command -v "$1" >/dev/null 2>&1 || { echo "ERROR: missing command: $1" >&2; exit 1; }
}

need_cmd jq
need_cmd grep
need_cmd sed
need_cmd sort
need_cmd awk
need_cmd cp
need_cmd mkdir

mkdir -p "$SNIPPET_ROOT"

# Collect snippet keys from twig, but ONLY from our namespace: wahl.*
# Matches:
#   'wahl.foo'|trans
#   "wahl.foo"|trans
# also if more filters follow (e.g. |trans|sw_sanitize)
keys=$(
  grep -R -n -E "\|\s*trans\b" "$VIEWS_DIR" \
  | sed -n -E "s/.*(['\"])(${NAMESPACE_PREFIX//./\\.}[^'\"]+)\1\s*\|\s*trans\b.*/\2/p" \
  | sort -u
)

to_jq_path () {
  printf '%s' "$1" | awk -F. '{ for (i=1;i<=NF;i++) printf "[\"%s\"]", $i }'
}

file_for_locale () {
  local locale="$1"
  echo "$SNIPPET_ROOT/$locale/${BASENAME}.${locale}.json"
}

# Ensure de-DE exists (source for de-AT first copy)
DE_FILE="$(file_for_locale "de-DE")"
mkdir -p "$(dirname "$DE_FILE")"
if [[ ! -f "$DE_FILE" ]]; then
  echo "{}" > "$DE_FILE"
  echo "Created: $DE_FILE"
fi

# If de-AT does not exist yet, create it as a copy of de-DE (one-time only)
AT_FILE="$(file_for_locale "de-AT")"
mkdir -p "$(dirname "$AT_FILE")"
if [[ ! -f "$AT_FILE" ]]; then
  cp "$DE_FILE" "$AT_FILE"
  echo "Created (copy from de-DE): $AT_FILE"
fi

# Ensure the other locale files exist
for locale in "${LOCALES[@]}"; do
  file="$(file_for_locale "$locale")"
  mkdir -p "$(dirname "$file")"
  if [[ ! -f "$file" ]]; then
    echo "{}" > "$file"
    echo "Created: $file"
  fi
done

# Nothing to do if no matching keys were found
if [[ -z "${keys// }" ]]; then
  echo "ℹ️ No keys found with prefix '${NAMESPACE_PREFIX}' in: $VIEWS_DIR"
  exit 0
fi

# Sync: add missing keys as TODO (never overwrite existing strings)
for locale in "${LOCALES[@]}"; do
  file="$(file_for_locale "$locale")"
  tmp="$(mktemp)"
  cp "$file" "$tmp"

  while IFS= read -r key; do
    [[ -z "$key" ]] && continue
    jq_path="$(to_jq_path "$key")"

    # If missing or null, set to "TODO" (does not touch existing strings)
    if ! jq -e ".${jq_path} | type == \"string\"" "$tmp" >/dev/null 2>&1; then
      tmp2="$(mktemp)"
      jq ".${jq_path} = (.${jq_path} // \"TODO\")" "$tmp" > "$tmp2"
      mv "$tmp2" "$tmp"
    fi
  done <<< "$keys"

  mv "$tmp" "$file"
  echo "Synced:  $file"
done

echo "✅ Done. Locales synced (namespace '${NAMESPACE_PREFIX}'): ${LOCALES[*]}"
