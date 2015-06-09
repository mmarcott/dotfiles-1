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
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Git completion to make git (outside of git-sh) easier
#test -f "/usr/local/etc/bash_completion.d/git-completion.bash" &&
#  source "/usr/local/etc/bash_completion.d/git-completion.bash"


alias zedit="vi ~/.zshrc"
alias reload="source ~/.zshrc"

for file in $(tree -if ~/.dotfiles/custom-omz | grep .zsh); do
  source $file
done
