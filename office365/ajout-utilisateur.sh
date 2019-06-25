#!/bin/bash

echo "Creation des utilisateurs"














continuer=0
while [ $continuer == 0 ]; do
	
	read -p 'continuer ? (oui/non)' reponse
	if [ $reponse == 'non' ]; then
		continuer=1
		echo $continuer
	fi
done
