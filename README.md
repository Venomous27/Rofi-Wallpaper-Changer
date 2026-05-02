# Rofi-Wallpaper-Changer
# ✨ Hyprland Acrylic Wallpaper Picker

A custom Rofi wallpaper picker for Hyprland using awww.


(Add screenshot / GIF here)

---

## 📦 Requirements

Install these packages:


`sudo pacman -S rofi-wayland`
`yay -S awww`


---

## ⚙️ Setup Guide

### 1. Start awww on login

Add this line to your `hyprland.conf`


`exec-once = awww-daemon`


---

### 2. Create script folder


`mkdir -p ~/.config/rofi/scripts`


--- 

### 3. Add wallpaper script

Create file:


`nano ~/.config/rofi/scripts/wallpaper.sh`


Paste the provided script.

---

### 4. Make script executable


`chmod +x ~/.config/rofi/scripts/wallpaper.sh`


---

### 5. Add keybind

In `hyprland.conf`


`bind = SUPER, W, exec, ~/.config/rofi/scripts/wallpaper.sh`


---

### 6. Add blur rules


`layerrule = blur on, match:namespace ^(rofi)$`
`layerrule = ignore_alpha 0.2, match:namespace ^(rofi)$`


---

### 7. Reload Hyprland


`hyprctl reload`


---

## 🚀 Usage

Press:


`SUPER + W`


Choose wallpaper and enjoy ✨

---

## 📁 Wallpapers Folder

Put wallpapers in:


`~/Pictures/Wallpapers`


Supported:

- png
- jpg
- jpeg
- webp

---


---

## ❤️ Credits

Chat GPT and Google AI for Code and layerrules
