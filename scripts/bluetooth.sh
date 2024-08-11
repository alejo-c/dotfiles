#!/bin/bash
case "$1" in
power) sh ~/dotfiles/scripts/bluetooth-options/toggle-power.sh ;;
connection) sh ~/dotfiles/scripts/bluetooth-options/toggle-connection.sh ;;
esac
