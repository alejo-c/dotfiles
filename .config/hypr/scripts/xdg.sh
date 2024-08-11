#!/bin/sh
# __  ______   ____
# \ \/ /  _ \ / ___|
#  \  /| | | | |  _
#  /  \| |_| | |_| |
# /_/\_\____/ \____|
#
# -----------------------------------------------------
# sleep 1

killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal
# sleep 1

start xdg-desktop-portal-hyprland
/usr/lib/xdg-desktop-portal-hyprland &
# sleep 2

start xdg-desktop-portal
/usr/lib/xdg-desktop-portal &
# sleep 1
