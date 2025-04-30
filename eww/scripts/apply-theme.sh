#!/bin/bash

THEME_DIR="$HOME/.config/themes"
CURRENT_THEME_FILE="$THEME_DIR/current"

THEME_A="catppuccin"
THEME_B="lumon"

# get current theme
CURRENT_THEME=$(cat "$CURRENT_THEME_FILE" 2>/dev/null)

# toggle
if [[ "$CURRENT_THEME" == "$THEME_A" ]]; then
    NEW_THEME="$THEME_B"
else
    NEW_THEME="$THEME_A"
fi

echo "$NEW_THEME" > "$CURRENT_THEME_FILE"

# symlink
# ln -sf "$THEME_DIR/$NEW_THEME/waybar/style.css" "$HOME/.config/waybar/style.css"
ln -sf "$THEME_DIR/$NEW_THEME/hyprland/myColors.conf" "$HOME/.config/hypr/colors.conf"
ln -sf "$THEME_DIR/$NEW_THEME/eww/eww.scss" "$HOME/.config/eww/eww.scss"
ln -sf "$THEME_DIR/$NEW_THEME/mako/config" "$HOME/.config/mako/config"
# folders
rm -rf "$HOME/.config/eww/scss"
ln -sf "$THEME_DIR/$NEW_THEME/eww/scss" "$HOME/.config/eww/scss"
rm -rf "$HOME/.config/gtk-3.0"
ln -s "$THEME_DIR/$NEW_THEME/gtk-3.0" "$HOME/.config/gtk-3.0"

# Set wallpaper for the theme
swww img "$THEME_DIR/$NEW_THEME/wallpaper.png" --transition-type grow --transition-duration 0.8

# reload
pkill eww
eww daemon 
eww open bar &
pkill mako && mako &
hyprctl reload

notify-send "Updated to $NEW_THEME"
