#! /bin/bash
git config --global user.name "allgoliot"
git config --global user.email "allan.goliot@gmail.com"
git add .
git status
read -p "Etes-vous sûrs de vouloir push? (y/n): " reponse
if [ $reponse ==  "y" ];then
	read -p "Commentaire de commit : " commentaire
	git commit -m "`echo $commentaire`"
#	git push origin master
fi

echo $commentaire
