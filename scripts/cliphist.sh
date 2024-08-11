#!/bin/bash

case $1 in
delete)
  cliphist list | rofi -dmenu -replace -config ~/.config/rofi/config-cliphist.rasi | cliphist delete
  ;;
wipe)
  if [ "$(echo -e 'Clear\nCancel' | rofi -dmenu -config ~/.config/rofi/config-short.rasi)" == "Clear" ]; then
    cliphist wipe
  fi
  ;;
*)
  cliphist list | rofi -dmenu -replace -config ~/.config/rofi/config-cliphist.rasi | cliphist decode | wl-copy
  ;;
esac
