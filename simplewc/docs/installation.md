# Installation & Build Guide

**Warning:** The upstream `simplewc` repository targets `wlroots 0.19`. If you are on Arch Linux with `wlroots 0.20+`, the default build will fail due to Xwayland cursor API changes.

1. Build from Source (The wlroots 0.20 Fix)
```bash
git clone https://github.com/kcirick/simplewc.git
cd simplewc

# Patch the meson.build to look for wlroots 0.20
sed -i "s/'wlroots-0.19'/'wlroots-0.20'/g" meson.build

# Build WITHOUT Xwayland (we use xwayland-satellite instead)
meson setup -Dxwayland=disabled build/
ninja -C build/
sudo ninja -C build/ install

2. Post-Install Fixes
To make this a fully functional daily driver, ensure you have these dependencies and environment variables set:
sudo pacman -S grim libnotify swaybg swaync
trizen -S xwayland-satellite xdg-desktop-portal-wlr

Unmask Portals (Required for Electron/WhatsApp):
systemctl --user unmask xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user enable --now xdg-desktop-portal xdg-desktop-portal-wlr

Force Native Wayland for GTK/Qt Apps:
Add these to your autostart.sh:
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
