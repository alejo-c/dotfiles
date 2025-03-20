#!/bin/bash
#  ____  _             _    __        __          _
# / ___|| |_ __ _ _ __| |_  \ \      / /_ _ _   _| |__   __ _ _ __
# \___ \| __/ _` | '__| __|  \ \ /\ / / _` | | | | '_ \ / _` | '__|
#  ___) | || (_| | |  | |_    \ V  V / (_| | |_| | |_) | (_| | |
# |____/ \__\__,_|_|   \__|    \_/\_/ \__,_|\__, |_.__/ \__,_|_|
#                                           |___/
# -----------------------------------------------------

# -----------------------------------------------------
# Quit all running waybar instances
# -----------------------------------------------------
killall waybar
pkill waybar

# Check if waybar-disabled file exists
[ -f "$HOME"/.cache/waybar-disabled ] && exit 1

# -----------------------------------------------------
# Default theme: /THEMEFOLDER;/VARIATION
# -----------------------------------------------------
themestyle="/minimal;/minimal"

# -----------------------------------------------------
# Get current theme information from .cache/.themestyle
# -----------------------------------------------------
if [ -f ~/.cache/.themestyle ]; then
  themestyle=$(cat ~/.cache/.themestyle)
else
  touch ~/.cache/.themestyle
  echo "$themestyle" >~/.cache/.themestyle
fi

IFS=';' read -ra arrThemes <<<"$themestyle"
echo "Theme: ${arrThemes[0]}"

if [ ! -f ~/.config/waybar/themes"${arrThemes[1]}"/style.css ]; then
  themestyle="/ml4w;/ml4w/light"
fi

# -----------------------------------------------------
# Loading the configuration
# -----------------------------------------------------
config_file="config.jsonc"
style_file="style.css"

# Standard files can be overwritten with an existing config-custom or style-custom.css
if [ -f ~/.config/waybar/themes"${arrThemes[0]}"/config-custom ]; then
  config_file="config-custom"
fi
if [ -f ~/.config/waybar/themes"${arrThemes[1]}"/style-custom.css ]; then
  style_file="style-custom.css"
fi

waybar -c ~/.config/waybar/themes"${arrThemes[0]}"/$config_file -s ~/.config/waybar/themes"${arrThemes[1]}"/$style_file &
