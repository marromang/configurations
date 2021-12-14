#!/bin/zsh 

# check docker processes running

if [ $(ps aux | grep "docker-cli-api.sock" | wc -l) -ge 2 ] 
then 
    echo "Docker is up and running"
else
    echo "Docker is not running, do you want to start it?" 
    read start
    if [[ $start == [yY][eE][sS] ]]
    then
        echo "Starting docker"
        open /Applications/Docker.app
    else    
        echo "Docker wil not be started."
    fi
fi