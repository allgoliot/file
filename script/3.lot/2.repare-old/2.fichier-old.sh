#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 0"
	echo "renome tout les fichier dans ."
else
	for fichier in `ls`
	do
		name=`basename $fichier -old`
		mv $fichier $name
	done
fi
