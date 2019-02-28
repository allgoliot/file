#!/bin/bash
#if [ $# == 0 ];then
#	echo "Usage : $0 "
#	echo "Boucle"
#else
	while [ -z $reponse ] || [ $reponse != 'oui' ]
	do
		read -p "Dites oui :" reponse
	done
#fi
