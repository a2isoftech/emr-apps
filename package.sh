#!/bin/bash

# This script can be run like this:
# ./package.sh packages/emr_one_core/pubspec.yaml && ./package.sh packages/emr_one_localisations/pubspec.yaml && ./package.sh packages/emr_sharedtypes/pubspec.yaml&& ./package.sh packages/emr_one_theme/pubspec.yaml&& ./package.sh packages/emr_core_api/pubspec.yaml

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <path-to-pubspec.yaml>"
  exit 1
fi

PUBSPEC="$1"

if [[ ! -f "$PUBSPEC" ]]; then
  echo "Error: File not found: $PUBSPEC"
  exit 1
fi

PUBSPEC_DIR="$(cd "$(dirname "$PUBSPEC")" && pwd)"

# Replace publish_to: "none" with the hosted URL
sed -i '' 's|publish_to: "none"|publish_to: https://dartpackages.emrgroup.com|' "$PUBSPEC"

# Find all path dependencies and replace them with hosted versions
# Pattern: lines with `path: ../` under a dependency name
tmpfile=$(mktemp)
trap 'rm -f "$tmpfile"' EXIT

while IFS= read -r line; do
  # Check if this line is a path dependency (must start with ../ or ./)
  if echo "$line" | grep -qE '^[[:space:]]+path:[[:space:]]+\.\.?/'; then
    # Extract the relative path (trim leading/trailing whitespace from value)
    rel_path=$(echo "$line" | sed 's/^[[:space:]]*path:[[:space:]]*//' | sed 's/[[:space:]]*$//')
    # Resolve the full path to the dependency's pubspec.yaml
    dep_pubspec="$PUBSPEC_DIR/$rel_path/pubspec.yaml"
    if [[ -f "$dep_pubspec" ]]; then
      # Extract version from the dependency's pubspec.yaml
      version=$(grep -m1 '^version:' "$dep_pubspec" | sed 's/^version:[[:space:]]*//' | sed 's/[[:space:]]*$//')
      # Get indentation from original line
      indent=$(echo "$line" | sed 's/[^[:space:]].*//')
      # Write hosted + version lines instead of the path line
      echo "${indent}hosted: https://dartpackages.emrgroup.com" >> "$tmpfile"
      echo "${indent}version: ^${version}" >> "$tmpfile"
    else
      echo "Warning: Could not find $dep_pubspec, keeping path reference" >&2
      echo "$line" >> "$tmpfile"
    fi
  else
    echo "$line" >> "$tmpfile"
  fi
done < "$PUBSPEC"

cp "$tmpfile" "$PUBSPEC"
echo "Done: $PUBSPEC updated for publishing."
