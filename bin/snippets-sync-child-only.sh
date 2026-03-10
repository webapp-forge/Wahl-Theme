#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   bash bin/snippets-sync-child-only.sh WahlAgrarTheme
#   bash bin/snippets-sync-child-only.sh WahlReitsportTheme
#
# Generates snippet keys that are referenced in the CHILD views, but NOT present in BaseTheme snippets.

CHILD_THEME="${1:-}"
if [[ -z "$CHILD_THEME" ]]; then
  echo "Usage: $0 <ChildThemeName>  (e.g. WahlAgrarTheme)" >&2
  exit 1
fi

BASENAME="storefront"
LOCALES=("de-DE" "de-AT" "fr-FR" "it-IT")

BASE_ROOT="custom/plugins/WahlBaseTheme/src"
CHILD_ROOT="custom/plugins/${CHILD_THEME}/src"

BASE_VIEWS="${BASE_ROOT}/Resources/views"
CHILD_VIEWS="${CHILD_ROOT}/Resources/views"

BASE_SNIPPETS="${BASE_ROOT}/Resources/snippet"
CHILD_SNIPPETS="${CHILD_ROOT}/Resources/snippet"

need_cmd () { command -v "$1" >/dev/null 2>&1 || { echo "ERROR: missing command: $1" >&2; exit 1; }; }
need_cmd jq
need_cmd grep
need_cmd sed
need_cmd sort
need_cmd awk
need_cmd mkdir

if [[ ! -d "$CHILD_VIEWS" ]]; then
  echo "ERROR: Child views dir not found: $CHILD_VIEWS" >&2
  exit 1
fi

# collect keys from CHILD twig files (do not abort if none found)
keys=$(
  (grep -R -n -E "\|\s*trans\b" "$CHILD_VIEWS" || true) \
  | sed -E "s/.*(['\"])([^'\"]+)\1\s*\|\s*trans\b.*/\2/" \
  | sort -u
)

to_jq_path () {
  printf '%s' "$1" | awk -F. '{ for (i=1;i<=NF;i++) printf "[\"%s\"]", $i }'
}

file_for () {
  local root="$1" locale="$2"
  echo "$root/$locale/${BASENAME}.${locale}.json"
}

# ensure child files exist
for locale in "${LOCALES[@]}"; do
  f="$(file_for "$CHILD_SNIPPETS" "$locale")"
  mkdir -p "$(dirname "$f")"
  [[ -f "$f" ]] || echo "{}" > "$f"
done

# For each key found in child views:
# - if Base has it for that locale => do NOTHING (avoid overriding Base defaults)
# - else => add "TODO" to Child (only if missing)
while IFS= read -r key; do
  [[ -z "$key" ]] && continue
  jq_path="$(to_jq_path "$key")"

  for locale in "${LOCALES[@]}"; do
    base_file="$(file_for "$BASE_SNIPPETS" "$locale")"
    child_file="$(file_for "$CHILD_SNIPPETS" "$locale")"

    # If base has the key as a string, skip (do NOT create override)
    if [[ -f "$base_file" ]] && jq -e ".${jq_path} | type == \"string\"" "$base_file" >/dev/null 2>&1; then
      continue
    fi

    # If child already has it, skip
    if jq -e ".${jq_path} | type == \"string\"" "$child_file" >/dev/null 2>&1; then
      continue
    fi

    tmp="$(mktemp)"
    jq ".${jq_path} = (.${jq_path} // \"TODO\")" "$child_file" > "$tmp"
    mv "$tmp" "$child_file"
    echo "Added (child-only): ${CHILD_THEME} ${locale}  ${key}"
  done
done <<< "$keys"

echo "✅ Done. Child-only snippet keys synced for: $CHILD_THEME"
