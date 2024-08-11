#!/bin/bash
#  _   _           _       _                 _     _
# | | | |_ __   __| | __ _| |_ ___   ___  __| | __| |_ __ ___
# | | | | '_ \ / _` |/ _` | __/ _ \ / __|/ _` |/ _` | '_ ` _ \
# | |_| | |_) | (_| | (_| | ||  __/ \__ \ (_| | (_| | | | | | |
#  \___/| .__/ \__,_|\__,_|\__\___| |___/\__,_|\__,_|_| |_| |_|
#       |_|
#
# by Stephan Raabe (2024)
# -----------------------------------------------------
current_wallpaper=$(cat "$HOME/.cache/current_wallpaper")
extension="${current_wallpaper##*.}"
color=$(tail -3 "$HOME/.cache/wal/colors" | head -1)

origin_path="$HOME/dotfiles/sddm"
target_path='/usr/share/sddm/themes/sugar-dark/'

# Copy config file
if [ ! -d /etc/sddm.conf.d/ ]; then
  sudo mkdir /etc/sddm.conf.d
  echo "Folder /etc/sddm.conf.d created."
fi

sudo cp "$origin_path/sddm.conf" /etc/sddm.conf.d/

# Copy wallpaper
sudo cp "$current_wallpaper" $target_path/Backgrounds/current_wallpaper."$extension"

# Copy theme file
sudo cp "$origin_path"/theme.conf $target_path
sudo sed -i 's/CURRENTWALLPAPER/'"current_wallpaper.$extension/" $target_path/theme.conf
sudo sed -i 's/ALTERCOLOR/'"$color/" $target_path/theme.conf

echo "SDDM Wallpaper Changed!"
