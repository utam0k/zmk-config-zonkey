#!/bin/bash
# Check differences with upstream

echo "Checking upstream..."

git remote add upstream https://github.com/kureyakey/zmk-config-zonkey.git 2>/dev/null
git fetch upstream

echo ""
echo "Technical files (should sync):"
git diff --name-only upstream/main -- '*.dtsi' 'west.yml' 'build.yml' 'build.yaml' | sed 's/^/  - /'

echo ""
echo "Custom files (protected):"
echo "  - config/zonkey.keymap"
echo "  - config/zonkey-custom.dtsi"
echo "  - config/boards/shields/zonkey/zonkey_R.conf"
echo "  - config/boards/shields/zonkey/zonkey_R.overlay"