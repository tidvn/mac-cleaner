#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./delete_files.sh [filename]"
  exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

echo "Deleting files and directories listed in file: $filename"

while read -r line; do
  # Ignore empty lines
  if [[ -z "$line" ]]; then
    continue
  fi

  # Check if the line represents a file or directory
  if [ -f "$line" ]; then
    echo "Deleting file: $line"
    sudo rm -f "$line"
  elif [ -d "$line" ]; then
    echo "Deleting directory: $line"
    sudo rm -rf "$line"
  else
    echo "Not found: $line"
  fi
done < "$filename"

echo "Done!"
