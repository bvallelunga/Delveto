#!/bin/bash

# Build New Image
docker build -t bvallelunga/delveto .

# Run New Images
docker run -p 80:1337 -d -e NODE_ENV=production bvallelunga/delveto
