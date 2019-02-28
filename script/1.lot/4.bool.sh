#!/bin/bash
read -p 'Nom de machine?' nom 
reponse=`cat /etc/hostname`
if [ $nom = $reponse ];then
	echo "Ouais gros"
else
	echo "Bah non !"
fi
