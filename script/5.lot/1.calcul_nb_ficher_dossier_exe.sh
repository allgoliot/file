#!/bin/bash
j=0
k=0
l=0

if [ $# == 0 ];then
	echo "Usage : $0 repertoire"
    echo "Calcul le nombre de fichier standart, de sous dossier, et d'executable dans le repertoire donné"
else
	rep=$1
    cd $rep
 
    for i in `ls`
    do
        if [ -d $i ]
        then
            echo $i
            let j=$j+1
        fi
        if [ -f $i ]
        then
            echo $i
            let k=$k+1
        fi
        if [ -x $i ]
        then
            echo $i
            let l=$l+1
        fi
    done
    echo "Il y a $j répertoires, $k fichiers et $l exécutables dans $rep"

fi
 
