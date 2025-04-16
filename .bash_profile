export EDITOR=vim
export MANPAGER=less
export TERMINAL=st
export GTK_THEME=Adw-dark
export LESS='-R --use-color -Dd+r$Du+b$'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
#export MANPAGER="sh -c 'col -b | vim -c \"set ft=man ts=2 nomod nolist nonu noma\" -'"

export MANROFFOPT='-P -c'
# export GDK_BACKEND=x11

export PATH="$PATH:/opt/nvim/:~/dotfiles/scripts/"

# XDG Variables

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export HISTFILE="${XDG_STATE_HOME}"/bash/history
export HISTSIZE=
export HISTFILESIZE=
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"

export NVM_DIR="$XDG_CONFIG_HOME"/nvm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

export RUSTUP_HOME="$XDG_CONFIG_HOME"/rustup
export CARGO_HOME="$XDG_CONFIG_HOME"/cargo

export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/config
export BAT_THEME="base16"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

[[ -f ~/.bashrc ]] && . ~/.bashrc
# xrdb -load ~/.config/X11/xresources
