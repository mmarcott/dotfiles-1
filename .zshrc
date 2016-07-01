ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/custom-omz
UPDATE_ZSH_DAYS=7
ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git history-substring-search docker zsh-syntax-highlighting vi-mode rbenv)
source $ZSH/oh-my-zsh.sh

# User configuration
export LS_COLORS="di=34:ln=35;40:so=32;40:pi=33;40:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Custom Edits
alias zedit="vim ~/.zshrc"
alias vedit="vim ~/.vimrc"
alias tedit="vim ~/.tmux.conf"
alias bedit="vim ~/.vim/plugins.vim"
alias kedit="cd ~/Code/keyboards/atreus-firmware/atreus; vim keymap_alex.c"
alias reload="source ~/.zshrc"

export EDITOR='vim'               # Preferred editor for local and remote sessions
export KEYTIMEOUT=10              # zsh vi mode timeout
bindkey -M viins 'jk' vi-cmd-mode # enter vi mode

