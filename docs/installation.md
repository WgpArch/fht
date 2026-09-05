# Installation & Build Guide

This guide covers how to manually build the patched `fht-compositor` from source and set up the configuration.

## Step 1: Install Prerequisites
```bash
sudo pacman -S rust git base-devel

Step 2: Clone the Source Code
git clone https://github.com/nferhat/fht-compositor.git ~/.fht-patch
cd ~/.fht-patch

Step 3: Apply the 12-Workspace Patch
Run these sed commands to change the hardcoded 9 to 12 across the codebase:
sed -i 's/const WORKSPACE_COUNT: usize = 9;/const WORKSPACE_COUNT: usize = 12;/' src/space/monitor.rs
sed -i 's/(0..9).contains/(0..12).contains/' src/ipc/mod.rs
sed -i 's/\[usize; 9\]/[usize; 12]/' src/ipc/subscribe.rs
sed -i 's/always 9 workspaces/always 12 workspaces/' src/ipc/subscribe.rs
sed -i 's/const WORKSPACE_COUNT: usize = 9;/const WORKSPACE_COUNT: usize = 12;/' fht-compositor-ipc/src/lib.rs

Step 4: Build and Install Manually with Cargo
cargo build --release
# Logout to do the following and do it in another compositor
sudo cp target/release/fht-compositor /usr/bin/fht-compositor

Step 5: Prevent Future Overwrites
Tell pacman to ignore the AUR package so it doesn't overwrite your patched binary:
sudo nano /etc/pacman.conf
# Add: IgnorePkg = fht-compositor-git

Step 6: SDDM Login Fix
If using SDDM, ensure the session file points to the binary, not the TTY wrapper:
sudo nano /usr/share/wayland-sessions/fht-compositor.desktop
# Change Exec line to: Exec=fht-compositor

Step 7: Copy Configurations
cp -r ~/.dotfiles/fht/configs/fht ~/.config/

Run this to make sure everything is in the right place:
tree ~/.dotfiles/fht -L 3
