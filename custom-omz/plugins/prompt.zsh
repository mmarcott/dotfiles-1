# avit theme mods
if [[ -d ~/.oh-my-zsh ]]; then
PROMPT='
$(_user_host)${_current_dir} $(git_prompt_info) $(_vi_status)
%{$fg[$CARETCOLOR]%}❯❯%{$resetcolor%} '
RPROMPT='%{$(echotc UP 1)%}$(_git_time_since_commit) $(git_prompt_status) ${_return_status}%{$(echotc DO 1)%}'
MODE_INDICATOR="%{$fg_bold[white]%}[NORMAL]%{$reset_color%}"
fi

# zsh vi mode timeout
export KEYTIMEOUT=10

# enter vi mode
bindkey -M viins 'jk' vi-cmd-mode

