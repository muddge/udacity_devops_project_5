#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=/devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=muddge
docker tag dfbf0745e91c muddge/devops:firsttry

# Step 3:
# Push image to a docker repository
docker push muddge/devops
