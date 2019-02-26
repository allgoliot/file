#! /bin/bash
docker build -t mysql . 

docker run --rm --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=admin mysql
