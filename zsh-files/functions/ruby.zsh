alias be='bundle exec'
alias yolo="be rake db:drop db:create db:migrate db:seed"
alias nyanspec='rspec spec --format NyanCatFormatter'
alias rubytags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias die='pgrep spring | xargs kill -9 &&  pgrep ruby | xargs kill -9'

# Adds gem to Gemfile. Must be in APP_ROOT  
function gemadd () {
  gem=$1
  echo "gem '$gem'" >> Gemfile
}

which rbenv &>/dev/null && eval "$(rbenv init --no-rehash - zsh)"

