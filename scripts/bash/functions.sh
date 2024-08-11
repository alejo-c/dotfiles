#!/bin/bash

function yy() {
  local tmp
  tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    z "$cwd"
  fi
  rm -f -- "$tmp"
}

function fp() {
  fzf --preview 'bat -n --color=always {}' "$@"
}

function ft() {
  fzf --preview 'tree -C {} | head -200' "$@"
}

function vf() {
  file=$(fd -p '/' -t f -H | fzf)
  [ -f "$file" ] && $EDITOR "$file"
}

function zf() {
  directory=$(fd -p '/' -t d -H | fzf)
  [ -d "$directory" ] && z "$directory"
}

function vv() {
  file=$(fd -p '/' -t f -H | fp "$@")
  [ -f "$file" ] && $EDITOR "$file"
}

function zz() {
  directory=$(fd -p '/' -t d -H | ft "$@")
  [ -d "$directory" ] && z "$directory"
}

# FZF

_fzf_compgen_path() {
  fd -H --follow . "$1"
}

_fzf_compgen_dir() {
  fd -t d -H --follow . "$1"
}

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
  cd) fzf --preview 'tree -C {} | head -200' "$@" ;;
  export | unset) fzf --preview "eval 'echo \$'{}" "$@" ;;
  ssh) fzf --preview 'dig {}' "$@" ;;
  *) fzf --preview 'bat -n --color=always {}' "$@" ;;
  esac
}
