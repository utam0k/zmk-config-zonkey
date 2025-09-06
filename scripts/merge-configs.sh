#!/bin/bash
# Merge base and custom config files

CONFIG_DIR="config/boards/shields/zonkey"

# Merge zonkey_R configs
if [ -f "$CONFIG_DIR/zonkey_R-base.conf" ] && [ -f "$CONFIG_DIR/zonkey_R-custom.conf" ]; then
    echo "Merging zonkey_R config files..."
    cat "$CONFIG_DIR/zonkey_R-base.conf" > "$CONFIG_DIR/zonkey_R.conf"
    echo "" >> "$CONFIG_DIR/zonkey_R.conf"
    echo "# --- Custom overrides ---" >> "$CONFIG_DIR/zonkey_R.conf"
    cat "$CONFIG_DIR/zonkey_R-custom.conf" >> "$CONFIG_DIR/zonkey_R.conf"
    echo "Merged config saved to $CONFIG_DIR/zonkey_R.conf"
else
    echo "Error: Base or custom config files not found"
    exit 1
fi