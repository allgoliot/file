#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 fichier_a_chercher_depuis_la_racine"
else
	trouve=`sudo find / -name $1`
	echo $trouve
fi
