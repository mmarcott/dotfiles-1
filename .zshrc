ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/custom-omz
UPDATE_ZSH_DAYS=7
ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

plugins=(git history-substring-search docker zsh-syntax-highlighting vi-mode)
source $ZSH/oh-my-zsh.sh

# User configuration
which rbenv &>/dev/null && eval "$(rbenv init --no-rehash - zsh)"
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Custom Edits
export EDITOR='vim'               # Preferred editor for local and remote sessions
export KEYTIMEOUT=10              # zsh vi mode timeout
bindkey -M viins 'jk' vi-cmd-mode # enter vi mode

alias zedit="e ~/.zshrc"
alias vedit="e ~/.vimrc"
alias tedit="e ~/.tmux.conf"
alias bedit="e ~/.vim/plugins.vim"
alias kedit="cd ~/Code/keyboards/atreus-firmware/atreus; e keymap_alex.c"
alias reload="source ~/.zshrc"

