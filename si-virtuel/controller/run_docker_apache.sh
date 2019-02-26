#! /bin/bash

docker run --name apache --rm -p 81:80 apache/loadbalancer:2.4
docker build -t apache/loadbalancer:2.4 . 
