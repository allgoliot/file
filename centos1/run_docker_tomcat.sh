#! /bin/bash

docker build -t tomcat . 

docker run --rm -p 8080:8080 -p 8009:8009 --name tomcat tomcat 
