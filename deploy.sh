#!/usr/bin/env bash

echo "Starting deployment.."

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 124355672723.dkr.ecr.us-east-1.amazonaws.com

docker build -t my-node-app .

docker tag my-node-app:latest 124355672723.dkr.ecr.us-east-1.amazonaws.com/my-node-app:latest

docker push 124355672723.dkr.ecr.us-east-1.amazonaws.com/my-node-app:latest