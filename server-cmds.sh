#!usr/bin/env bash

sudo docker stop backend || true && sudo docker rm backend || true
sudo docker run -p 80:3000 -d --name backend $1