ZSH=$HOME/.zsh
ZSH_CUSTOM=$HOME/.dotfiles/zsh-files

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR="$(which vim)"

plugins=(
  vi-mode
  clipboard
  docker-zsh-completion
  gpg
  zsh-autopair
  fuck
  fzf
  history-substring-search
  zsh-syntax-highlighting
)

source <(cat $ZSH_CUSTOM/functions/**/*.zsh)     # Sources custom functions and aliases
source $ZSH_CUSTOM/sourcer.zsh                   # Sets up up fpaths and plugins
source $ZSH_CUSTOM/themes/audibleblink.zsh       # Sets theme

alias e=$EDITOR
alias zedit="e ~/.zshrc"
alias vedit="e ~/.vimrc"
alias tedit="e ~/.tmux.conf"
alias bedit="e ~/.vim/plugins.vim"
alias aedit="e ~/.dotfiles/zsh-files/functions"
alias reload="source ~/.zshrc"

# Temp aliases
[[ `uname` == 'Darwin'  ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
alias kedit="cd ~/Code/keyboards/atreus-firmware/atreus; e keymap_alex.c"
alias asi='tree -if | grep -v node_modules | grep -e .js$ | xargs fixmyjs --legacy'
alias tree='LS_COLORS="di=34:ln=35:so=32;40:ex=31" tree'
