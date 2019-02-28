#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 fichier_a_tester"
else
	if [ ! -e $1 ]; then
		echo "Le fichier n'existe pas "
	fi
fi
