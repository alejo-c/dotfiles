#!/bin/bash

DIR="$HOME/pictures/screenshots/"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).png"

grim -g "$(slurp)" "$DIR$NAME"
notify-send "Screenshot created and copied to clipboard" "Mode: Selected area"
swappy -f "$DIR$NAME"
