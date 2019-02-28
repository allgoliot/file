#!/bin/bash
read -p 'Donne moi le nom de machine ? : ' machine 
read -p 'Donne moi le nom dutilisateur ? : ' user
read -p 'Donne moi la date (JJ-MM-YYY) ? : ' date_jour
rep_machine=`hostname`
rep_user=`whoami`
rep_date=`date +%d-%m-%Y`
if [ $rep_machine != $machine ] && [ $rep_user != $user ] && [ $rep_date != $date_jour ]; then
	echo "Game over"
else
	echo "bien ouej"
fi

