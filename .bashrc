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
PROMPT_COMMAND='echo -en "\033]0;Terminal $(dirs +0) \a"'

for file in aliases functions executables; do
  file=/home/alejo/dotfiles/scripts/bash/$file
  if [ -f "$file" ]; then source "$file"; fi
done
