#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 truc nul"
else
	for variable in 'valeur1''valeur2''valeur3'
	do
		echo "la variable vaux $variable"
	done
fi
