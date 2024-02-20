#!/bin/bash

# Set the base name for the screenshot files
base_name="screenshot"

# Set the directory to store the screenshots
screenshot_dir="$HOME/screenshots"

# Create the directory if it doesn't exist
mkdir -p "$screenshot_dir"

# Find the highest existing screenshot number
highest_number=0
for file in "${screenshot_dir}/${base_name}"*.png; do
    number=$(echo "$file" | sed "s|${screenshot_dir}/${base_name}\([0-9]\+\)\.png|\1|")
    if [[ $number -gt $highest_number ]]; then
        highest_number=$number
    fi
done

# Increment the highest number and create the next screenshot file
next_number=$((highest_number + 1))
next_file="${screenshot_dir}/${base_name}${next_number}.png"
grimblast save area "$next_file"

echo "Created $next_file"
