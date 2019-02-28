#!/bin/bash
if [ $# != 2 ];then
	echo "Usage : $0 info fichier"
	echo "affiche et donne la ligne d'une info contenu dans un fichier"
else

	grep -n $1 $2  > tmp
	if [ ! -z tmp ];then
		head -n 1 tmp
	else
		echo "jai pas trouver"
	fi
fi
