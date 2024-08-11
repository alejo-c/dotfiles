#!/bin/bash

case "$1" in
lock) sh ~/dotfiles/scripts/power-options/lock.sh ;;
logout) sh ~/dotfiles/scripts/power-options/logout.sh ;;
reboot) sh ~/dotfiles/scripts/power-options/reboot.sh ;;
shutdown) sh ~/dotfiles/scripts/power-options/shutdown.sh ;;
suspend) sh ~/dotfiles/scripts/power-options/suspend.sh ;;
esac
