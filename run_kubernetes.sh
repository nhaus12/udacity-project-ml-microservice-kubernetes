#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=nhaus12/udacity-housing-price-prediction

# Step 2
# Run the Docker Hub container with kubernetes
appname=housing-price-prediction
kubectl run $appname --image=$dockerpath --port=80 --labels app=$appname

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $appname 8000:80
