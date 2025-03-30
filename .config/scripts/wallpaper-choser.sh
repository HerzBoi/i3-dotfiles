#!/bin/bash

# Set the directory to scan for images (e.g., your Pictures folder or any directory you prefer)
DIRECTORY="$HOME/Documents/wallpapers"

# Scan for image files in the directory (you can modify the file types as needed)
IMAGE_FILES=$(find "$DIRECTORY" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.bmp" -o -iname "*.gif" \))

# Extract only the file names without extensions
FILE_NAMES=$(echo "$IMAGE_FILES" | sed -E 's/^(.*)\/([^\/]+)\.[a-zA-Z0-9]+$/\2/')

# Use rofi to display the list of file names and capture the selected one
SELECTED_NAME=$(echo "$FILE_NAMES" | rofi -dmenu -no-fixed-num-lines -p "Choose a Wallpaper")

# Check if a file was selected
if [ -n "$SELECTED_NAME" ]; then
    # Find the full path of the selected file
    SELECTED_IMAGE=$(echo "$IMAGE_FILES" | grep -i "$SELECTED_NAME")

    # Set the selected image as wallpaper using feh
    feh --bg-scale "$SELECTED_IMAGE"

    echo "$SELECTED_IMAGE" > ~/Documents/wallpapers/last-used.txt
else
    echo "No file selected."
fi
