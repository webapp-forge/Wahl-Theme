#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 3 ]]; then
  echo "Usage: $0 <ThemeName> <Locale> <SnippetKey>" >&2
  echo "Example: $0 WahlAgrarTheme de-DE wahl.topbar.phone" >&2
  exit 1
fi

THEME="$1"
LOCALE="$2"
KEY="$3"
BASENAME="storefront"

BASE_FILE="custom/plugins/WahlBaseTheme/src/Resources/snippet/${LOCALE}/${BASENAME}.${LOCALE}.json"
CHILD_FILE="custom/plugins/${THEME}/src/Resources/snippet/${LOCALE}/${BASENAME}.${LOCALE}.json"

mkdir -p "$(dirname "$CHILD_FILE")"
[[ -f "$CHILD_FILE" ]] || echo "{}" > "$CHILD_FILE"

# jq path from dot key: wahl.topbar.phone -> ["wahl"]["topbar"]["phone"]
JQ_PATH=$(printf '%s' "$KEY" | awk -F. '{ for (i=1;i<=NF;i++) printf "[\"%s\"]", $i }')

# Read base value if present, else TODO
BASE_VALUE="TODO"
if [[ -f "$BASE_FILE" ]]; then
  # returns null if not found
  v=$(jq -r ".${JQ_PATH} // empty" "$BASE_FILE")
  if [[ -n "$v" ]]; then BASE_VALUE="$v"; fi
fi

# Only set in child if missing (never overwrite existing overrides)
if jq -e ".${JQ_PATH} | type == \"string\"" "$CHILD_FILE" >/dev/null 2>&1; then
  echo "Already exists in child, not changed: $CHILD_FILE ($KEY)"
  exit 0
fi

tmp="$(mktemp)"
jq ".${JQ_PATH} = \"${BASE_VALUE}\"" "$CHILD_FILE" > "$tmp"
mv "$tmp" "$CHILD_FILE"

echo "✅ Added override stub: ${CHILD_FILE}  ->  ${KEY} = ${BASE_VALUE}"
