# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
  eval $(gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf)
fi
