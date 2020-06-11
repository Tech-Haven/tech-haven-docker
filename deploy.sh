#!/bin/sh

if [ ! -d "thetechhaven.com"  ]; then
  echo "Cloning repo"
  git clone https://github.com/Tech-Haven/thetechhaven.com.git
else
  echo "Pulling from master"
  git -C thetechhaven.com/  pull origin master
fi

echo "Restarting server..."

docker-compose down
docker image rm tech-haven-docker_api:latest
docker volume rm tech-haven-docker_nodejs
docker-compose up -d --build

echo "Server restarted successfully"
