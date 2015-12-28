alias dk='docker'
alias dr='dk run'
alias dps='dk ps'
alias dpsa='dps -a'
alias dimg='dk images'
alias dx='dk exec'
alias dxit='dk -it'

# deletes nameless docker images and containers
alias dkclean=dkclean="dimg | grep none | awk '{print $3}' | xargs docker rmi -f && dpsa | grep none | awk '{print $1}' | xargs docker rm"
