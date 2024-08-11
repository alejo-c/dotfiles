#!/bin/bash
#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

for file in aliases functions env-variables executables; do
  file=~/dotfiles/scripts/bash/$file.sh
  if [ -f "$file" ]; then source "$file"; fi
done
