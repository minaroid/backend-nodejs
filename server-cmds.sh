#!usr/bin/env bash

# export IMAGE=$1
sudo docker stop backend || true && sudo docker rm backend || true
sudo docker run -p 80:3000 -d --name backend $1