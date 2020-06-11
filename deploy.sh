#!/bin/sh

if [ ! -d "thetechhaven.com"  ]; then
  echo "Cloning repo"
  git clone https://github.com/Tech-Haven/thetechhaven.com.git
else
  echo "Pulling from master"
  git -C thetechhaven.com/  pull origin master
fi

# Change USER and directory to correct path
echo "Building frontend"
docker run -v /home/USER/docker/tech-haven-docker/thetechhaven.com/client:/client node npm install --prefix /client
docker run -v /home/USER/docker/tech-haven-docker/thetechhaven.com/client:/client node npm run build --prefix /client

echo "Restarting server..."

docker-compose down
docker image rm tech-haven-docker_api:latest
docker volume rm tech-haven-docker_nodejs
docker-compose up -d --build

echo "Server restarted successfully"
