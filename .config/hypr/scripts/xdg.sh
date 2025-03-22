#!/bin/sh
# __  ______   ____
# \ \/ /  _ \ / ___|
#  \  /| | | | |  _
#  /  \| |_| | |_| |
# /_/\_\____/ \____|
# -----------------------------------------------------

killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-wlr
killall -e xdg-desktop-portal

# start xdg-desktop-portal-hyprland
/usr/lib/xdg-desktop-portal-hyprland &
sleep 4

/usr/lib/xdg-desktop-portal-wlr &
sleep 4

# start xdg-desktop-portal
/usr/lib/xdg-desktop-portal &
