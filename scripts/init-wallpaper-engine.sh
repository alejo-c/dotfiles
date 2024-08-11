#!/bin/bash

wallpaper_engine=$(cat "$HOME"/dotfiles/.settings/wallpaper-engine)
if [ "$wallpaper_engine" == "swww" ]; then
  # swww
  echo ":: Using swww"
  swww init
  swww-daemon --format xrgb
  # sleep 0.5
elif [ "$wallpaper_engine" == "hyprpaper" ]; then
  # hyprpaper
  echo ":: Using hyprpaper"
  # sleep 0.5
else
  echo ":: Wallpaper Engine disabled"
fi
~/dotfiles/scripts/wallpaper.sh init
