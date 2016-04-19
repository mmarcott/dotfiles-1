# Initiate rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
  
# Adds gem to Gemfile. Must be in APP_ROOT  
gemadd () {
  gem=$1
  echo "gem '$gem'" >> Gemfile
}
