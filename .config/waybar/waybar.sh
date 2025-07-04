#!/bin/bash

case $1 in
toggle) killall -SIGUSR1 waybar ;;
reload) killall -SIGUSR2 waybar ;;
kill) killall -9 waybar ;;
themes) sh ~/.config/waybar/scripts/themeswitcher.sh ;;
*)
  echo "// Launch Waybar"
  sh "$0" kill
  sh ~/.config/waybar/scripts/launch.sh
  ;;
esac
