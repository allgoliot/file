#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 fichier nb_fois"
	echo "copie le fichier n fois la ou je suis"
else
	for n in `seq $2`
	do
		cp $1 $1$n
	done

#	for ((y=1;y<=10;y));
#	do
#		echo $y
#	done
fi
