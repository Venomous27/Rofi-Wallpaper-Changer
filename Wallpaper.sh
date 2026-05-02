#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

# Ensure awww daemon is running
if ! pidof awww-daemon >/dev/null; then
    awww-daemon &
    sleep 0.5
fi

# Full rewritten premium acrylic theme
GRID_THEME='
* {
    font: "JetBrainsMono Nerd Font 11";
}

window {
    width: 820px;
    height: 700px;
    anchor: center;
    location: center;
    border: 2px;
    border-radius: 22px;
    border-color: #89b4fa;
    background-color: #11111bcc;
    padding: 18px;
}

mainbox {
    background-color: transparent;
    spacing: 14px;
    children: [ inputbar, listview ];
}

inputbar {
    padding: 12px 16px;
    border-radius: 16px;
    background-color: #ffffff12;
    children: [ prompt, entry ];
}

prompt {
    enabled: true;
    text-color: #89b4fa;
    background-color: transparent;
    margin: 0px 8px 0px 0px;
}

entry {
    placeholder: "Search wallpaper...";
    placeholder-color: #ffffff66;
    text-color: #ffffff;
    background-color: transparent;
}

listview {
    columns: 3;
    lines: 2;
    flow: horizontal;
    fixed-height: true;
    fixed-columns: true;
    cycle: false;
    scrollbar: false;
    spacing: 16px;
    background-color: transparent;
}

element {
    orientation: vertical;
    padding: 10px;
    spacing: 10px;
    border-radius: 18px;
    background-color: transparent;
}

element selected.normal {
    background-color: #89b4fa33;
    border: 2px;
    border-color: #89b4fa;
}

element selected.active {
    background-color: #89b4fa33;
    border: 2px;
    border-color: #89b4fa;
}

element selected.urgent {
    background-color: #89b4fa33;
    border: 2px;
    border-color: #89b4fa;
}

element-icon {
    size: 210px;
    horizontal-align: 0.5;
    vertical-align: 0.5;
    border-radius: 14px;
    background-color: transparent;
}

element-text {
    horizontal-align: 0.5;
    text-color: #ffffffdd;
    background-color: transparent;
}
'

SELECTED=$(
for img in "$WALL_DIR"/*; do
    [[ "$img" =~ \.(jpg|jpeg|png|webp|PNG|JPG)$ ]] || continue
    printf "%s\0icon\x1f%s\n" "$(basename "$img")" "$img"
done | rofi \
-dmenu \
-i \
-show-icons \
-theme-str "$GRID_THEME" \
-p "" \
-name "wallpaper-picker"

)

if [ -n "$SELECTED" ]; then
    awww img "$WALL_DIR/$SELECTED" \
        --transition-type wipe \
        --transition-duration 1
fi
