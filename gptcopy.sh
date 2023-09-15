

















































































































#!/bin/bash

# Set the source directory to the current directory and the destination file to "all.txt" in the current directory
SRC_DIR="$(pwd)"
DEST_FILE="$SRC_DIR/all.txt"

# Check if the destination file exists, if yes, delete it to start fresh
if [ -f "$DEST_FILE" ]; then
  rm "$DEST_FILE"
fi

# Find all files in the source directory, excluding the 'venv', '.git', and '.idea' subdirs, and the destination file itself, and concatenate them into the destination file
find "$SRC_DIR" -type f ! -path "$SRC_DIR/venv/*" ! -path "$SRC_DIR/.git/*" ! -path "$SRC_DIR/.idea/*" ! -name "all.txt" -exec sh -c 'echo "File: $1"; cat "$1"' _ {} \; >> "$DEST_FILE"
