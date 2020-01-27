read -p "entre ton chemin du fichier " fiche
read -p "choisir une lettre ou mots: " mots
for i in  $mots
do
      
    nombre=$(grep -E "$i" $fiche)    
    nombre2=$(grep -E "$i" $fiche | wc -L )
    nombre3=$(grep "$i" $fiche | wc -l )
    nombre4=$(nl $fiche | cat | grep "$i" )
done
if [   $mots  ]
then 
      echo "trouver
 
      $nombre2   :lettre du mots
      $nombre3   :mots dans le texte
      ligne : $nombre4   "
else
echo "non trouver"
fi./