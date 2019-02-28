#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 Nom"
else

compta=`grep $1 Compta`
prod=`grep $1 Prod`
vente=`grep $1 Vente`
	case $1 in
	$compta)
		echo "Service Compta"
		;;
	$prod)
		echo "Service Prod"
		;;
	$vente)
		echo "Service Vente"
		;;
	*)
		echo "Je ne sais pas ce que c'est"
		;;
	esac
fi
