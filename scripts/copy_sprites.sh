#!/usr/bin/env bash
set -euo pipefail

SOURCE_FOLDER="../target/svg_sprites"
TARGET_FOLDER="../dist/plantuml/src/main/resources/sprites/archimate"

# Function: convert to lowercase and replace underscores with dashes
to_kebab_case() {
    local input="$1"
    # Convert to lowercase and replace underscores with dashes
    local output="${input,,}"          # lowercase
    output="${output//_/-}"            # replace underscores with dashes
    echo "$output"
}

# Ensure target exists
if [[ ! -d "$TARGET_FOLDER" ]]; then
    echo "ERROR: Folder '$TARGET_FOLDER' does not exist"
    exit 1
fi

# Loop over files in source
for file in "$SOURCE_FOLDER"/*; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        newname=$(to_kebab_case "$filename")
        cp "$file" "$TARGET_FOLDER/$newname"
    fi
done
