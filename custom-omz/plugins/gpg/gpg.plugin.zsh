if [ $(uname) = 'Darwin' ]; then
    AGENT="/Users/$USER/.gpg-agent-info"
else
    AGENT="/home/$USER/.gpg-agent-info"
fi

if [ -f "$AGENT" ] && [ -n "$(pgrep gpg-agent)" ]; then
    source "$AGENT"
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf)
fi
