#!/bin/bash
if [ $# != 3 ];then
	echo "Usage : $0 a operateur b "
	echo "Effectue l'operation arithmetique demande"
else
	case $2 in
	  +) echo "Addition"
	     echo "resultat = "$(($1 + $3));;
	  -) echo "Soustradction"
	     echo "resultat = "$(($1 - $3));;
	  /) echo "Division"
	     echo "resultat = "$(($1 / $3));;
	  x) echo "Multiplication"
	     echo "resultat = "$(($1 * $3));;
	  *) echo "Erreur de sairie";;
	esac
fi
