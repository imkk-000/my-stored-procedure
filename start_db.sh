#!/bin/sh
DOCKER_NAME=mydb

docker stop $DOCKER_NAME
docker rm $DOCKER_NAME
docker run -d --name $DOCKER_NAME \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=s1mpl3@ \
    -e MYSQL_ALLOW_EMPTY_PASSWORD=YES \
    -e MYSQL_DATABASE=sample_database \
    mysql:5.7
docker ps
