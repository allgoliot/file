#! /bin/bash
echo "Nom du commit : " 
read a
git add .
git commit -m $a
git push origin master
