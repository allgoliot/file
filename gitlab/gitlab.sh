#!/bin/bash

export myip=www.`curl ifconfig.me`.xip.io
docker run -d --hostname $myip -p 444:443 -p 82:80 -p 2222:22 --name gitlab -v /home/gitlab/config:/etc/gitlab -v /home/gitlab/logs:/var/log/gitlab -v /home/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce:latest
docker ps
