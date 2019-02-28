#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : ./elseif.sh test1 test2 test3"
else
echo "parm1 =$1"

	if [ $1 -gt 2 ]; then
		echo "Le premier test a été verifié"
		elif [ $2 -gt 3 ]; then
			echo "Le second test a été verifié"
			elif [ $3 -lt 4 ]; then
				echo "Le troisieme test a etait vérifié"
			else
				echo "Aucun des test précédénts n'a été verifié"
	fi
fi
