#!/bin/bash

set -e

HYPRLAND_CONFIG_DIR="$HOME/.config/hypr"
HYPRLAND_CONFIG="$HYPRLAND_CONFIG_DIR/hyprland.conf"
TWEAK_REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OVERRIDES_DIR="$TWEAK_REPO_DIR/hyprland-overrides"

# Check if hyprland config exists
if [ ! -f "$HYPRLAND_CONFIG" ]; then
    echo "Hyprland config not found at $HYPRLAND_CONFIG"
    echo "Please install hyprland first"
    exit 1
fi

# Check if overrides config exists
if [ ! -f "$OVERRIDES_DIR" ]; then
    echo "Overrides config dir not found at $OVERRIDES_DIR"
    exit 1
fi

./append_overrides "$HYPRLAND_CONFIG_DIR/monitors.conf" "$OVERRIDES_DIR/override-monitors.conf"
./append_overrides "$HYPRLAND_CONFIG_DIR/input.conf" "$OVERRIDES_DIR/override-input.conf"
./append_overrides "$HYPRLAND_CONFIG_DIR/bindings.conf" "$OVERRIDES_DIR/override-bindings.conf"
./append_overrides "$HYPRLAND_CONFIG_DIR/looknfeel.conf" "$OVERRIDES_DIR/override-looknfeel.conf"
./append_overrides "$HYPRLAND_CONFIG_DIR/autostart.conf" "$OVERRIDES_DIR/override-autostart.conf"

#--- backup and overwrite screensaver/lock settings
mv "$HYPRLAND_CONFIG_DIR/hypridle.conf" "$HYPRLAND_CONFIG_DIR/hypridle.conf.orig"
cp "$OVERRIDES_DIR/hypridle.conf" "$HYPRLAND_CONFIG_DIR/hypridle.conf"

echo "Hyprland overrides setup complete!"
