#!/bin/bash

# EZA
alias l='eza --icons'
alias la='l -a'
alias ll='l -lh'
alias lt='l -TL'
alias lla='ll -a'
alias lta='l -aTL'
alias llt='l -lTL'
alias llta='l -alTL'

# Others

alias c='clear'
alias cp='cp -iv'
alias mv='mv -iv'
alias r='. ~/.bashrc'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias rm='trash'

alias ff='fastfetch'
alias y='yazi'
alias x='paru'
alias yt='ytfzf'
alias t='tree --metafirst --dirsfirst -C -L'

alias vi='$EDITOR'
alias notes='$EDITOR ~/documents/notes/index.md'
alias todo='$EDITOR ~/documents/notes/todo.md'

alias calc='bc -ilqw'
alias cff='c && ff'
alias check='x -Sy && x -Qu'
alias update='x -Syu --ignore linux'
alias grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias myip='ip addr show wlan0 | grep "inet " | head -1 | cut -f6 -d" "'
alias clip='cliphist list | fzf | cliphist decode | wl-copy'

# Custom Scripts

alias settings='~/dotfiles/apps/ML4W_Dotfiles_Settings-x86_64.AppImage'

alias audio='sh ~/dotfiles/scripts/audio.sh'
alias autopause='sh ~/dotfiles/scripts/autopause.sh'
alias blue='sh ~/dotfiles/scripts/bluetooth.sh'
alias brightness='sh ~/dotfiles/scripts/brightness.sh'
alias clean='~/dotfiles/scripts/clean.sh'
alias mode='sh ~/dotfiles/scripts/mode.sh'
alias polkit='~/dotfiles/scripts/polkit.sh'
alias screenshot='sh ~/dotfiles/scripts/screenshot.sh'
alias size='~/dotfiles/scripts/size.sh'
alias wallpaper='~/dotfiles/sddm/scripts/wallpaper.sh'
alias power='~/dotfiles/scripts/power.sh'
alias ytt='~/dotfiles/scripts/ytfzf.sh'
