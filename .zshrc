# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git history-substring-search aws docker zsh-syntax-highlighting vi-mode rbenv github docker-compose)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Custom Edits
alias zedit="vim ~/.zshrc"
alias vedit="vim ~/.vimrc"
alias tedit="vim ~/.tmux.conf"
alias bedit="vim ~/.vim/.vimrc.bundles"
alias kedit="vim ~/Code/keyboards/atreus-firmware/atreus/keymap_alex.c"
alias reload="source ~/.zshrc"

# sources custom aliases and functions
for file in $(tree -if ~/.dotfiles/custom-omz | grep .zsh); do; source $file; done
