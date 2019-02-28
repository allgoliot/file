#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 0"
	echo "Boucle de 1 a 10"
else
	for i in `seq 0 2 10`
	do
		echo $i
	done

#	for ((y=1;y<=10;y));
#	do
#		echo $y
#	done
fi
