#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 repertoire nom_a_chercher"
	echo "Cherche dans le repertoire le DOSSIER nommé nom_a_chercher"
else
	cd $1
	touch tmp
	find . -type d -name "$2" -print > tmp
	if [ -s tmp ]; then
		echo "Il existe "
	else
		echo "il existe pas"
	fi
	rm tmp
fi
