#!/bin/bash

case "$1" in
s) sh ~/dotfiles/scripts/ytfzf-options/subs.sh "${@:2}" ;;
d) sh ~/dotfiles/scripts/ytfzf-options/download.sh "${@:2}" ;;
*) sh ~/dotfiles/scripts/ytfzf-options/search.sh "$@" ;;
esac
