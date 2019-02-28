#!/bin/bash
rep_machine=`hostname`
rep_date=`date +%D`
rep_user=`whoami`

if [ "$rep_machine" == "$1" ];then
	echo "jai le bon nom machine"
elif [ "$rep_user" == "$2" ];then
	echo "jai le bon user"
elif [ "$rep_date" == "$3" ];then
	echo "Bien ouej la date "
else
	echo "Game over"
fi
#	read -p 'Donne moi le nom dutilisateur ? : ' user
#	read -p 'Donne moi la date (JJ/MM/YY) ? : ' date_jour
#	read -p 'Donne moi le nom de machine ? : ' machine 


