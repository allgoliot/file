#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 nom_dossier nom_fichier_CR"
#	echo "compte les fichiers ici,"
#	echo "les copie dans dossier/,"
#	echo "ecris un fichier avec les fichier copier et leurs destination"

else
	var=0
	mkdir $1
	touch ../$2
	for fichier in `find . -maxdepth 1 -type f`
	do
		let "var++"
		#echo $fichier
		nom=`basename $fichier`
		cp $nom $1/$nom
		echo "$var $nom `pwd`/$1/" >> ../$2
	done
	echo "$var fichier copié"
	echo "Compte rendu ../$2"
fi

