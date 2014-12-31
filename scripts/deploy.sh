#!/bin/bash

# Stop & Remove Old Containers
bash scripts/removeContainers.sh

# Remove Old Images
docker rmi bvallelunga/sails 2> /dev/null

# Build New Images
docker build -t bvallelunga/sails .

# Run New Images
docker run -p 80:1337 -d -e NODE_ENV=production bvallelunga/sails
docker run -p 1337:1337 -d bvallelunga/sails
