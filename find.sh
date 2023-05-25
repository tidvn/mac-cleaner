#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./find.sh [search parameters]"
  exit 1
fi

# Set the search parameters as an array
search_params=("$@")

# Construct the filename for the search result
filename="${search_params// /_}.txt"

# Perform the search and save the results to the filename
sudo find / -iname "*${search_params[@]}*" > "$filename"

echo "Search results saved to file: $filename"
