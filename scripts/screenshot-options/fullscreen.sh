#!/bin/bash

DIR="$HOME/pictures/screenshots/"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).png"

sleep .9
grim "$DIR$NAME"
notify-send "Screenshot created and copied to clipboard" "Mode: Fullscreen"
swappy -f "$DIR$NAME"
