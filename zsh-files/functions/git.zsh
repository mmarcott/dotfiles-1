# clone a repo and cd into it
gcln () {
  url=$1
  reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//')
  git clone $url $reponame
  cd $reponame
}

ignore () {
  input=$1
  echo $input >> .gitignore
}
