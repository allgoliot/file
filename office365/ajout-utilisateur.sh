#!/bin/bash

echo "Creation des utilisateurs"

creation(adresse)
{

	



}












read -p "Adresse microsoft (exemple :@Helioskideo.onmicrosoft.com") adresse 
continuer=0
while [ $continuer == 0 ]; do
	
	read -p 'continuer ? (oui/non)' reponse
	if [ $reponse == 'non' ]; then
		continuer=1
		echo $continuer
	fi
	continuer(adresse)
done
