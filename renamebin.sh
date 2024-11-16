#!/bin/bash

# Directory containing the inject files
DIR="./"

# Navigate to the directory
cd "$DIR" || exit

# Count files matching the pattern
inject_files_count=$(ls inject*.bin 2>/dev/null | wc -l)
inject_bin_exists=0

# Check if inject.bin exists
if [ -f "inject.bin" ]; then
    inject_bin_exists=1
fi

# Logic for renaming and deletion
if [ "$inject_bin_exists" -eq 1 ] && [ "$inject_files_count" -eq 1 ]; then
    # Do nothing if only inject.bin exists
    echo "Only inject.bin exists. No action taken."
elif [ "$inject_files_count" -gt 0 ]; then
    if [ "$inject_bin_exists" -eq 1 ]; then
        # Delete inject.bin if it exists and there's at least one inject*.bin
        rm "inject.bin"
        echo "Deleted existing inject.bin"
    fi
    # Rename one matching file to inject.bin
    for file in inject*.bin; do
        mv "$file" "inject.bin"
        echo "Renamed $file to inject.bin"
        break
    done
else
    echo "No files to rename."
fi
