#!/bin/bash

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# . ~/.cache/wal/colors-tty.sh
# cat ~/.cache/wal/sequences

eval "$(starship init bash)"
eval "$(thefuck --alias)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
cff
