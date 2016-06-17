alias desktop='cd ~/Desktop'
alias ls='ls -FGh'
alias l='ls -lth'
alias fixaudio='ps ax | grep coreaudiod | grep sbin | awk "{print $1}"'
alias e=vim
alias asi='tree -if | grep -v node_modules | grep -e .js$ | xargs fixmyjs --legacy'

# enables command auto-correction
which thefuck > /dev/null && eval "$(thefuck --alias)"

# black backgrounds are ugly
export LS_COLORS="di=34:ln=35;40:so=32;40:pi=33;40:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
