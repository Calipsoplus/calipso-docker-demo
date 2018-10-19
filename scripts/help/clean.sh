cd ../../ 
docker rm $(docker ps -aq) -f
docker rmi $(docker images -q) -f
docker system prune
docker volume prune
docker volume rm $(docker volume ls -q --filter dangling=true)
docker network prune
docker-compose rm
