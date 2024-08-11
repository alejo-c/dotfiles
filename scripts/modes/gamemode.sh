#!/bin/bash

echo "source = ~/.config/hypr/conf/windows/minimal.conf" >~/.config/hypr/conf/window.conf
echo "source = ~/.config/hypr/conf/decorations/disabled.conf" >~/.config/hypr/conf/decoration.conf
echo "source = ~/.config/hypr/conf/animations/disabled.conf" >~/.config/hypr/conf/animation.conf

pkill -9 dunst
pkill -9 nm-applet
pkill -9 blueman-applet

pkill -9 hyprpaper
pkill -9 hypridle
pkill -9 hyprswitch

pkill -9 wl-copy
pkill -9 wl-paste
pkill -f -9 polkit-gnome-authentication-agent-1

sh ~/.config/waybar/waybar.sh kill

killall -e xdg-desktop-portal-hyprland
# killall -e xdg-desktop-portal-gnome
# killall -e xdg-desktop-portal-kde
# killall -e xdg-desktop-portal-lxqt
# killall -e xdg-desktop-portal-wlr
# killall -e xdg-desktop-portal-gtk
killall -e xdg-desktop-portal
