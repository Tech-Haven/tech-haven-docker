cd thetechhaven.com

echo "Pulling from Master"

git pull origin Master

echo "Pulled successfully from master"

echo "Restarting server..."

docker-compose down
docker-compose build --no-cache
docker-compose up -d

echo "Server restarted successfully"