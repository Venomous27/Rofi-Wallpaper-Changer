# Rofi-Wallpaper-Changer
#🚨 Check out the Updated Version 🚨 
# ✨ Hyprland Acrylic Wallpaper Picker

A custom Rofi wallpaper picker for Hyprland using awww.


<img width="800" height="450" alt="Wallpaer-Changer" src="https://github.com/user-attachments/assets/4030309d-b53a-4dd0-97f3-fce86359384e" />


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
[<kbd>📄 Open wallpaper.sh</kbd>](./Wallpaper.sh)

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
