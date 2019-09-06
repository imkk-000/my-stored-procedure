#!/bin/sh
DOCKER_NAME=mydb-with-data

docker build -t $DOCKER_NAME .
docker stop $DOCKER_NAME
docker rm $DOCKER_NAME
docker run -d --name $DOCKER_NAME \
    -p 3306:3306 \
    -e MYSQL_ALLOW_EMPTY_PASSWORD=YES \
    -e MYSQL_DATABASE=sample_database \
    $DOCKER_NAME
docker ps

echo wait mysql starting... 10s
sleep 10
docker logs $DOCKER_NAME
docker exec -it $DOCKER_NAME sh /sql/run_sql.sh
