ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/zsh-files
ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

export EDITOR="$(which vim)"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

plugins=(git history-substring-search docker zsh-syntax-highlighting vi-mode gpg fzf autopair)
source $ZSH/oh-my-zsh.sh
source <(cat $ZSH_CUSTOM/{aliases,functions}/**/*.zsh)

# Temp aliases
alias kedit="cd ~/Code/keyboards/atreus-firmware/atreus; e keymap_alex.c"
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
