#!/bin/bash
read -p "Si vous etes d\'accord entrez o ou oui:" reponse
if [ ! $reponse = "o" ] && [ ! $reponse = "oui" ];then
	echo "Non, je ne suis pas d\'accord"
else
	echo "Oui je suis d'accord!"
fi
