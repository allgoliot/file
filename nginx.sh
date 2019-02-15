#! /bin/bash

#docker run --name nginx -d -p 8080:80 -v /docker/nginx/:/usr/share/nginx/html:ro -it nginx bash
docker run --name nginx -p 8181:80 -it nginx bash
