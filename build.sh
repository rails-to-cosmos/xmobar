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
fi
