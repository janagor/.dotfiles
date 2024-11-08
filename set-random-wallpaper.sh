#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/dotfiles/Wallpapers"

# Select a random image from the directory
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the selected image as the wallpaper using feh
feh --bg-scale "$RANDOM_WALLPAPER"
