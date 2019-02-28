#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 fichier"
	echo "cherche dans / le fichier et indique son chemin"
else
	trouve=`sudo find / -name $1`
	echo $trouve
fi
