alias desktop='cd ~/Desktop'
alias ls='ls -FGh'
alias l='ls -lth'
alias fixaudio='ps ax | grep coreaudiod | grep sbin | awk "{print $1}"'
alias e=atom
alias asi='tree -if | grep -v node_modules | grep -e .js$ | xargs fixmyjs --legacy'

# enables command auto-correction
eval "$(thefuck --alias)"
