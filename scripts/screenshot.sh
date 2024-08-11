#!/bin/bash

options="Selected Area\nFullscreen\nCurrent Window"
config_file=~/.config/rofi/config-screenshot.rasi

case $1 in
fullscreen) sh ~/dotfiles/scripts/screenshot-options/fullscreen.sh ;;
area) sh ~/dotfiles/scripts/screenshot-options/selected-area.sh ;;
window) sh ~/dotfiles/scripts/screenshot-options/window.sh ;;
*)
  choice=$(echo -e "$options" | rofi -dmenu -replace -config "$config_file" -l 3 -p "Take Screenshot")

  case $choice in
  "Fullscreen") choice="fullscreen" ;;
  "Selected Area") choice="area" ;;
  "Current Window") choice="window" ;;
  esac

  [[ "$choice" != "" ]] && sh ~/dotfiles/scripts/screenshot.sh "$choice"
  ;;
esac
