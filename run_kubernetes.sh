#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=docker.io/muddge/devops:firsttry

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment devops --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
sleep 10s
pod=`kubectl get pods | awk 'NR==2{print $1}'`

# Step 4:
# Forward the container port to a host

kubectl expose deployment devops --type=LoadBalancer --port=8000
kubectl port-forward $pod 8000:80
