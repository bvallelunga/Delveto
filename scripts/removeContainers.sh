#!/bin/bash

# Stop & Remove Old Containers
docker stop $(docker ps -a -q) 2> /dev/null
docker rm $(docker ps -a -q) 2> /dev/null
