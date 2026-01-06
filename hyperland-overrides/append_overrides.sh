#!/bin/bash

set -e

OMARCHY_FILE="${BASH_SOURCE[1]}"
OVERRIDE_FILE="${BASH_SOURCE[2]}"
OVERRIDE_MARKER="# ---------- jb's omarchy-tweak ----------------------------------------"

# Check if hyprland config exists
if [ ! -f "$OMARCHY_FILE" ]; then
    echo "Hyprland config not found at $OMARCHY_FILE"
    echo "Please install hyprland first"
    exit 1
fi

# Check if overrides config exists
if [ ! -f "$OVERRIDE_FILE" ]; then
    echo "Overrides config not found at $OVERRIDE_FILE"
    exit 1
fi

# Check if source line already exists in hyprland.conf
if grep -Fxq "$OVERRIDE_MARKER" "$OMARCHY_FILE"; then
    echo "Overide marker line already exists in $OMARCHY_FILE"
else
    echo "Adding overrides to $OMARCHY_FILE"
    echo "" >> "$OMARCHY_FILE"
    cat "$OVERRIDE_FILE" >> "$OMARCHY_FILE"
    echo "Overrides added successfully"
fi
