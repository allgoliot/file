#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 0"
	echo "renome tout les fichier dans ."
else
	for fichier in `ls`
	do
		mv $fichier $fichier-old
	done
fi
