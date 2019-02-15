#! /bin/bash

docker run --name nagios4  \
  -v /docker/nagios/etc/:/opt/nagios/etc/ \
  -v /docker/nagios/var:/opt/nagios/var/ \
  -v /docker/nagios/plugins:/opt/Custom-Nagios-Plugins \
  -v /docker/nagios/graph/var:/opt/nagiosgraph/var \
  -v /docker/nagios/graph/etc:/opt/nagiosgraph/etc \
  -p 8080:80 jasonrivers/nagios:latest
