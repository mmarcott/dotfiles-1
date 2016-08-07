ZSH=$HOME/.zsh
ZSH_CUSTOM=$HOME/.dotfiles/zsh-files

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR="$(which nvim)"

plugins=(
  vi-mode
  clipboard
  docker-zsh-completion
  gpg
  zsh-autopair
  fuck
  fzf
  #must be last
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
alias iedit="e ~/.config/i3/config"
alias reload="source ~/.zshrc"

# Temp aliases
alias kedit="cd $HOME/Dropbox/Code/keyboards/atreus-firmware/atreus/; e keymap_alex.c"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
