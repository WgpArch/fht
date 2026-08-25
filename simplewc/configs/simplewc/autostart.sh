#!/bin/bash

# Force Qt apps to use Wayland
export QT_QPA_PLATFORM=wayland

# Force GTK apps to use Wayland
export GDK_BACKEND=wayland

# Start Xwayland support
xwayland-satellite &

# Start Network Manager Applet
nm-applet --indicator &

# Start Wallpaper
swaybg -i /home/wgparch/Pictures/ALNW/Library.jpg -m fill &

# Start Waybar
waybar -c ~/.config/simplewc/waybar/config.jsonc -s ~/.config/simplewc/waybar/style.css 

Start swaync
swaync & 

