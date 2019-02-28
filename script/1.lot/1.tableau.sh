#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : ./tableau nom prenom"
else

tableau=("bonjour" "$1" "$2")
echo ${tableau[*]}

fi
