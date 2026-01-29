#!/bin/bash
set -e

echo "Stopping old container if exists..."
docker stop my-nodejs-app || true
docker rm my-nodejs-app || true

echo "Starting new container..."
docker run -d \
  --name my-nodejs-app \
  -p 80:8080 \
  442955307136.dkr.ecr.us-east-1.amazonaws.com/my-nodejs-app:latest
