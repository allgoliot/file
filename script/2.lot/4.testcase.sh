#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 animal"
else
	case $1 in
		"Chien" | "Chat" | "Souris")
			echo "C'est un mammifère"
			;;
		"Moineau" | "Piegon")
			echo "C'est un oisea"
			;;
		*)
			echo "Je ne sais pas ce que c'est"
			;;
	esac
fi
