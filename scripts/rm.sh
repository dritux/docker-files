#!/bin/bash

# stop all running containers
echo '####################################################'
echo 'Stopping running containers (if available)...'
echo '####################################################'
docker stop $(docker ps -aq) 2>/dev/null || echo "No Stopping containers"

# remove all stopped containers
echo '####################################################'
echo 'Removing containers ..'
echo '####################################################'
docker rm $(docker ps -aq) 2>/dev/null || echo "No Removing containers"

# remove all images
echo '####################################################'
echo 'Removing images ...'
echo '####################################################'
docker rmi -f $(docker images -a -q) 2>/dev/null || echo "Removing images"

# remove all stray volumes if any
echo '####################################################'
echo 'Revoming docker container volumes (if any)'
echo '####################################################'
docker volume rm $(docker volume ls -q) 2>/dev/null || echo "No Revoming docker container"
