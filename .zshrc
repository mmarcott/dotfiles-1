export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/custom-omz
export UPDATE_ZSH_DAYS=3
export skip_global_compinit=1

ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git history-substring-search docker zsh-syntax-highlighting vi-mode rbenv)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Custom Edits
alias zedit="vim ~/.zshrc"
alias vedit="vim ~/.vimrc"
alias tedit="vim ~/.tmux.conf"
alias bedit="vim ~/.vim/plugins.vim"
alias kedit="cd ~/Code/keyboards/atreus-firmware/atreus; vim keymap_alex.c"
alias reload="source ~/.zshrc"

# zsh vi mode timeout
export KEYTIMEOUT=10

# enter vi mode
bindkey -M viins 'jk' vi-cmd-mode

# sources custom aliases and functions
# for file in $(tree -if ~/.dotfiles/custom-omz | grep .zsh); do; source $file; done
