#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Bilder/Wallpapers/catppuccin-wallpapers-main/landscapes"

wallpaper=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)

if [ -z "$wallpaper" ]; then
    notify-send "awww" "Keine Wallpaper in $WALLPAPER_DIR gefunden"
    exit 1
fi

awww img "$wallpaper" \
    --transition-type grow \
    --transition-duration 1 \
    --transition-fps 60

notify-send "Wallpaper" "$(basename "$wallpaper")"
