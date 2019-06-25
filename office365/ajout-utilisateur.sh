#!/bin/bash

#todo 
#permettre au script de s'adapter a un fichier cvs avec x entrée
#sortir un cvs avec les données 

adresse=@Helioskideo.onmicrosoft.com
read -p "Adresse microsoft (defaut: @Helioskideo.onmicrosoft.com) : " adresse 
echo "Creation des utilisateurs"

creation()
{
correct="N"
#while [ correct != "N" ]; do

	read -p "Nom d\'utilisateur: " user
	read -p "Prénom : " prenom
	read -p "Nom : " nom
	read -p "Nom complet : " nom_complet
	read -p "Fonction : " fonction
	read -p "Service : " service
	read -p "Numéro du bureau : " num_bureau
	read -p "Téléphone (bureau) : " tel_bureau
	read -p "Téléphone mobile : " tel_mobile
	read -p "Numéro de télécopie : " telecopie
	read -p "Adresse : " adresse
	read -p "Ville : " ville
	read -p "Département ou province : " departement
	read -p "Code postal : " postal
	read -p "Pays ou zone géographique : " pays
	clear
	
	echo "--------------------"
	echo "Nom d\'utilisateur: "$user
	echo "Prénom : "$prenom
	echo "Nom : "$nom
	echo "Nom complet : "$nom_complet
	echo "Fonction : "$fonction
	echo "Service : "$service
	echo "Numéro du bureau : "$num_bureau
	echo "Téléphone (bureau) : "$tel_bureau
	echo "Téléphone mobile : "$tel_mobile
	echo "Numéro de télécopie : "$telecopie
	echo "Adresse : "$adresse
	echo "Ville : "$ville
	echo "Département ou province : "$departement
	echo "Code postal : "$postal
	echo "Pays ou zone géographique : "$pays
	echo "--------------------"
	read -p "Est-ce correct ? N pour recommencer" correct
#done
	
	csv=$user$adresse","$prenom","$nom","$nom_complet","$fonction","$service","$num_bureau","$tel_bureau","$tel_mobile","$telecopie","$adresse","$ville","$departement","$postal","$pays
	echo $csv
	clear

}













reponse="oui"
while [ $reponse == "oui" ]; do
	creation
	read -p 'continuer ? (oui/non)' reponse
	
done
