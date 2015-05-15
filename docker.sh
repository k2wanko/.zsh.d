DOCKER_MACHINE_NAME="dev-1"
(docker-machine start $DOCKER_MACHINE_NAME 1> /dev/null &)
eval "$(docker-machine env $DOCKER_MACHINE_NAME)"

alias -g PS='`docker ps -a | tail -n +2 | peco | awk '\''{print $1}'\''`'
alias -g IMG='`docker images | tail -n +2 | peco | awk '\''{print $3}'\''`'







