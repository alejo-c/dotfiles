#!/bin/bash

export EDITOR=nvim
export MANPAGER=less
export TERMINAL=kitty
export LESS='-R --use-color -Dd+r$Du+b$'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
export MANROFFOPT='-P -c'

export PATH="$PATH:/opt/nvim/:/usr/lib/cache/bin/"
export NVM_DIR="$HOME/.nvm"
export GTK_THEME=Adw-dark
export GDK_BACKEND=x11
PROMPT_COMMAND='echo -en "\033]0;Terminal ${PWD/#$HOME/\~}\a"'
