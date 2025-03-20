#!/bin/sh

case $1 in
center)
  hyprctl dispatch centerwindow 1
  ;;
toggleallfloat)
  hyprctl dispatch workspaceopt allfloat
  ;;
togglefloat)
  hyprctl dispatch togglefloating
  sh "$0" center
  ;;
esac
