#!/bin/bash

echo "source = ~/.config/hypr/conf/windows/preferred.conf" >~/.config/hypr/conf/window.conf
echo "source = ~/.config/hypr/conf/decorations/preferred.conf" >~/.config/hypr/conf/decoration.conf
echo "source = ~/.config/hypr/conf/animations/preferred.conf" >~/.config/hypr/conf/animation.conf

hypridle &
nm-applet --indicator &
blueman-applet &
wl-paste --watch cliphist store &
hyprswitch init &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

sh ~/.config/waybar/waybar.sh
sh ~/dotfiles/scripts/init-wallpaper-engine.sh
sh ~/.config/hypr/scripts/xdg.sh
