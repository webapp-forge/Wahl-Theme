#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

THEME_NAME="${1:-}"
shift || true

if [[ -z "$THEME_NAME" ]]; then
  echo "Usage: bin/scaffold-scss.sh <PluginThemeName> [filters...]" >&2
  echo "Example: bin/scaffold-scss.sh WahlBaseTheme layout component" >&2
  exit 1
fi

CORE_SCSS_DIR="$PROJECT_ROOT/vendor/shopware/storefront/Resources/app/storefront/src/scss"

THEME_ROOT="$PROJECT_ROOT/custom/plugins/$THEME_NAME"
THEME_SCSS_DIR="$THEME_ROOT/src/Resources/app/storefront/src/scss"

if [[ ! -d "$THEME_ROOT" ]]; then
  echo "ERROR: Plugin theme '$THEME_NAME' not found under custom/plugins" >&2
  exit 1
fi

mkdir -p "$THEME_SCSS_DIR"

FILTERS=("$@")

echo "Scaffolding FULL SCSS tree (PLUGIN THEME)"
echo "Core:  $CORE_SCSS_DIR"
echo "Theme: $THEME_SCSS_DIR"
if [[ ${#FILTERS[@]} -gt 0 ]]; then
  echo "Filters: ${FILTERS[*]}"
else
  echo "Filters: (none) -> all"
fi
echo

should_include() {
  local rel="$1"
  if [[ ${#FILTERS[@]} -eq 0 ]]; then
    return 0
  fi
  for f in "${FILTERS[@]}"; do
    [[ "$rel" == "$f"* ]] && return 0
  done
  return 1
}

cd "$CORE_SCSS_DIR"

# 1) Ordnerstruktur spiegeln
while IFS= read -r -d '' dir; do
  rel="${dir#./}"
  if should_include "$rel"; then
    mkdir -p "$THEME_SCSS_DIR/$rel"
  fi
done < <(find . -type d -print0)

# 2) _*.scss als Skeletons anlegen
while IFS= read -r -d '' file; do
  rel="${file#./}"
  if ! should_include "$rel"; then
    continue
  fi

  base="$(basename "$rel")"
  [[ "$base" != _*.scss ]] && continue

  target="$THEME_SCSS_DIR/$rel"
  [[ -f "$target" ]] && continue

  mkdir -p "$(dirname "$target")"
  cat > "$target" <<EOF
/* scaffold: $rel
   Plugin Theme: $THEME_NAME
   Add your rules here. This file is NOT imported unless it contains real content.
*/
EOF
done < <(find . -type f -name "*.scss" -print0)

echo "Done. Full SCSS skeleton tree created for plugin theme '$THEME_NAME'."
