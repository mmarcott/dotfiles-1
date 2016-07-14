AGENT="$HOME/.gpg-agent-info"

if [ -f "$AGENT" ] && [ -n "$(pgrep gpg-agent)" ]; then
    source "$AGENT"
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf)
fi
