#!/bin/bash

if [ "$1" == "game" ]; then
  sh ~/dotfiles/scripts/modes/gamemode.sh
  return
fi
sh ~/dotfiles/scripts/modes/preferredmode.sh
