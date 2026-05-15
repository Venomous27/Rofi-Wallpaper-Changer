#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

# Start awww daemon if not running
if ! pidof awww-daemon >/dev/null; then
    awww-daemon &
    sleep 0.5
fi

SELECTED=$(
    for img in "$WALL_DIR"/*; do
        [[ "$img" =~ \.(jpg|jpeg|png|webp|JPG|PNG)$ ]] || continue

        printf "%s\0icon\x1f%s\n" "$(basename "$img")" "$img"
    done | rofi \
        -dmenu \
        -i \
        -show-icons \
        -theme ~/.config/rofi/themes/wallpaper.rasi \
        -p ""
)

if [ -n "$SELECTED" ]; then
    awww img "$WALL_DIR/$SELECTED" \
        --transition-type wipe \
        --transition-duration 1
fi