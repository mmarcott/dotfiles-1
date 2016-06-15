# mkdir, cd into it
mkcd () {
  mkdir -p "$*"
  cd "$*"
}

# zsh vi mode timeout
export KEYTIMEOUT=10

# enter vi mode
bindkey -M viins 'jk' vi-cmd-mode

# source fzf if it's installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
