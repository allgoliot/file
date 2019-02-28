#!/bin/bash
echo "Verifie que lon est bien un jour de la semaine et en 2018"

jour_j=`date +%A`
annee_a=`date +%G`
if [ $jour_j != "Samedi" ] || [ $jour_j != "Dimanche" ] && [ $annee_a = "2018" ] ;then
	echo "Semaine 2018"
else
	echo "Sortie ! "
fi

