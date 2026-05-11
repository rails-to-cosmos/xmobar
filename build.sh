#!/bin/sh
# Generate xmobarrc from xmobarrc.base, applying theme.conf overrides if present.
dir="$(cd "$(dirname "$0")" && pwd)"
cp "$dir/xmobarrc.base" "$dir/xmobarrc"

theme="$dir/theme.conf"
if [ -f "$theme" ]; then
    . "$theme"
    sed -i \
        -e "s/bgColor = \"#[0-9A-Fa-f]*\"/bgColor = \"$BG\"/" \
        -e "s/fgColor = \"#[0-9A-Fa-f]*\"/fgColor = \"$FG\"/" \
        -e "s/borderColor = \"#[0-9A-Fa-f]*\"/borderColor = \"$BORDER\"/" \
        "$dir/xmobarrc"
    # Replace hardcoded widget colors in built-in plugins (Cpu, Memory)
    [ -n "$GOOD" ] && sed -i "s/\"#B6E63E\"/\"$GOOD\"/g; s/\"#27AE60\"/\"$GOOD\"/g" "$dir/xmobarrc"
    [ -n "$WARN" ] && sed -i "s/\"#FFCC00\"/\"$WARN\"/g; s/\"#E67E22\"/\"$WARN\"/g" "$dir/xmobarrc"
    [ -n "$ERR"  ] && sed -i "s/\"#E74C3C\"/\"$ERR\"/g" "$dir/xmobarrc"
fi
