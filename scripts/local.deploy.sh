#!/bin/bash

# Build New Image
docker build -t bvallelunga/delveto .

# Run New Images
if [ -z "$1" ] || [ "$1" == "dev" ] || [ "$1" == "both" ]; then
  docker run -p 1337:1337 -d bvallelunga/delveto
fi

if [ "$1" == "prod" ] || [ "$1" == "both" ]; then
  docker run -p 80:1337 -d -e NODE_ENV=production bvallelunga/delveto
fi
