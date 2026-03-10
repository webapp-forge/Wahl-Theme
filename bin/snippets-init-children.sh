#!/usr/bin/env bash
set -euo pipefail

# Locales, die ihr nutzt
LOCALES=("de-DE" "de-AT" "fr-FR" "it-IT")
BASENAME="storefront"

# Themes (Plugin-Ordnernamen)
THEMES=("WahlBaseTheme" "WahlAgrarTheme" "WahlReitsportTheme")

for theme in "${THEMES[@]}"; do
  ROOT="custom/plugins/${theme}/src/Resources/snippet"
  for locale in "${LOCALES[@]}"; do
    dir="${ROOT}/${locale}"
    file="${dir}/${BASENAME}.${locale}.json"
    mkdir -p "$dir"
    if [[ ! -f "$file" ]]; then
      echo "{}" > "$file"
      echo "Created: $file"
    fi
  done
done

echo "✅ Done. Snippet structure initialized for: ${THEMES[*]}"
