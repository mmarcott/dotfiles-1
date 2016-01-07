docker-machine env default &> /dev/null
if [[ $? -eq 0 ]]; then
  eval "$(docker-machine env default)"
fi

dockerStart () {
  docker-machine start default && eval "$(docker-machine env default)"
}

