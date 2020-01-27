#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 avant apres fichier.txt"
	echo "Permet de remplacer un mot par un autre dans un fichier"
else
	mot='s/'$1'/'$2'/g'
	echo $mot
	sed -i $mot $3
fi
