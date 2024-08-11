#!/bin/bash

DIR="$HOME/pictures/screenshots/"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).png"

hyprctl dispatchers cyclenext prev

sleep .9
grim -g "$(hyprctl activewindow | grep 'at:' | cut -d':' -f2 | tr -d ' ' | tail -n1) $(hyprctl activewindow | grep 'size:' | cut -d':' -f2 | tr -d ' ' | tail -n1 | sed s/,/x/g)" "$DIR$NAME"

notify-send "Screenshot created and copied to clipboard" "Mode: Current window"
