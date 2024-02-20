in/bash

# Set the base name for the screenshot files
base_name="screenshot"

# Find the highest existing screenshot number
highest_number=0
for file in "${base_name}"*.png; do
    number=$(echo "$file" | sed "s/${base_name}\([0-9]\+\)\.png/\1/")
    if [[ $number -gt $highest_number ]]; then
        highest_number=$number
    fi
done

# Increment the highest number and create the next screenshot file
next_number=$((highest_number + 1))
next_file="${base_name}${next_number}.png"
grimblast save area ~/screenshots/"$next_file"

echo "Created ~/screenshots/$next_file"