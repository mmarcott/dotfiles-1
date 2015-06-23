# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="avit"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/Users/alex/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Preferred editor for local and remote sessions
atom=`which atom`
  test $atom &&
  export EDITOR="$atom --wait" &&
  alias e=atom

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
fi


# Custom Edits

alias zedit="vi ~/.zshrc"
alias reload="source ~/.zshrc"

# sources custom aliases and functions
for file in $(tree -if ~/.dotfiles/custom-omz | grep .zsh); do
  source $file
done
