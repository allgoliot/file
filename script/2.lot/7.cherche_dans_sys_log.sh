#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 0 "
	echo "Cherche dans /var/log/syslog le mot"
else
	while [ -s  $mot ] 
	do
		read -p 'le mot' mot
		grep -n $mot /var/log/syslog
	done
fi
