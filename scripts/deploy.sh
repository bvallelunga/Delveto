#!/bin/bash

# Stop & Remove Old Containers
docker stop $(docker ps -a -q) 2> /dev/null
docker rm $(docker ps -a -q) 2> /dev/null

# Remove Old Images
docker rmi bvallelunga/delveto 2> /dev/null

# Build New Images
docker build -t bvallelunga/delveto .

# Run New Images
if [ -z "$1" ] || [ "$1" == "dev" ] || [ "$1" == "both" ]; then
  docker run -p 1337:1337 -d bvallelunga/delveto
fi

if [ "$1" == "prod" ] || [ "$1" == "both" ]; then
  docker run -p 80:1337 -d -e NODE_ENV=production bvallelunga/delveto
fi
