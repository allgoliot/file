#! /bin/bash


rm sortie.yml
touch sortie.yml
echo "---" >> sortie.yml
echo "Nom du premier groupe de serveur" 
read a
echo " - name : $a" >> sortie.yml

echo "Quels sont les hosts concerné ?(tout collé, séparer par une virgule"
read hosts
echo "   hosts: $hosts">> sortie.yml
echo "   remove_user: root" >> sortie.yml
echo "Il y a t'il des taches a effectuer ? oui/n)"
read reponse
if [ $reponse == "oui" ] 
then
	echo "   tasks:"
	echo "Nom de la tache"
	read nom_tache
	echo "   - name: $nom_tache">> sortie.yml
fi

#     apt: name={{ item }} update-cache=yes
#     with_items:
#      - vim
#      - htop
#      - git
#      - zsh 
#
#- name : install de serveur centos
#  hosts: centos
#  remote_user: root
#  tasks:
#   - name: installation de quelques paquets
#     yum: name={{ item }}
#     with_items:
#      - vim
#      - git
#      - zsh 


echo "...">>sortie.yml
cat sortie.yml
