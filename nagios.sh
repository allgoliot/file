#! /bin/bash

docker run --name nagios4  \
  -v /nagios/etc/:/opt/nagios/etc/ \
  -v /nagios/var:/opt/nagios/var/ \
  -v /nagios/plugins:/opt/Custom-Nagios-Plugins \
  -v /nagios/graph/var:/opt/nagiosgraph/var \
  -v /nagios/graph/etc:/opt/nagiosgraph/etc \
  -p 0.0.0.0:8080:80 jasonrivers/nagios:latest
