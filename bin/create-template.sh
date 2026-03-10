#!/usr/bin/env bash
# create-template
# Usage: ./create-template <path> <theme>
# Example:
#   ./create-template "vendor/shopware/storefront/Resources/views/storefront/layout/header/actions/wishlist-widget.html.twig" base

set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <path> <theme(base|ag|rs)>" >&2
  exit 1
fi

SRC_REL="$1"
THEME="$2"

if [[ "$SRC_REL" != vendor/shopware/storefront/* ]]; then
  echo "Error: path must start with 'vendor/shopware/storefront/'" >&2
  echo "Got: $SRC_REL" >&2
  exit 1
fi

PLUGIN=""
case "$THEME" in
  base) PLUGIN="WahlBaseTheme" ;;
  ag)   PLUGIN="WahlAgrarTheme" ;;
  rs)   PLUGIN="WahlReitsportTheme" ;;
  *)
    echo "Error: theme must be one of: base, ag, rs" >&2
    exit 1
    ;;
esac

# Target path: replace vendor/shopware/storefront -> custom/plugins/<PLUGIN>/src
TARGET_REL="${SRC_REL/vendor\/shopware\/storefront/custom\/plugins\/$PLUGIN\/src}"

# If target exists: do nothing (no error), just inform.
if [[ -e "$TARGET_REL" ]]; then
  echo "Already exists, nothing to do: $TARGET_REL"
  exit 0
fi

# Ensure directory exists
mkdir -p "$(dirname "$TARGET_REL")"

# Build sw_extends path:
# vendor/shopware/storefront/Resources/views/<...>  -> @Storefront/<...>
VIEWS_PREFIX="vendor/shopware/storefront/Resources/views/"
if [[ "$SRC_REL" == "$VIEWS_PREFIX"* ]]; then
  REL_VIEW_PATH="${SRC_REL#"$VIEWS_PREFIX"}"
else
  # Fallback (shouldn't happen for standard Shopware storefront templates)
  REL_VIEW_PATH="${SRC_REL#vendor/shopware/storefront/}"
fi

# For child themes (ag/rs) extend from base theme, not Storefront
EXTENDS_BASE="@Storefront"
if [[ "$THEME" == "ag" || "$THEME" == "rs" ]]; then
  EXTENDS_BASE="@WahlBaseTheme"
fi

EXTENDS_PATH="$EXTENDS_BASE/$REL_VIEW_PATH"

# Write minimal template (only sw_extends)
cat > "$TARGET_REL" <<EOF
{% sw_extends '$EXTENDS_PATH' %}
EOF

echo "Created: $TARGET_REL"
echo "Extends: $EXTENDS_PATH"
