#!/bin/bash

# Create the directory if it doesn't exist
DIR="$HOME/Pictures/Screenshots/simplewc"
mkdir -p "$DIR"

# Define the filename with a timestamp
FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S).png"

# Take the screenshot
grim "$FILE"

# Fix for Wayland: Ensure D-Bus is connected so swaync can hear us
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
fi

# Send the notification with an icon and normal urgency
notify-send -u normal -i camera "Screenshot Taken" "Saved to $FILE"
