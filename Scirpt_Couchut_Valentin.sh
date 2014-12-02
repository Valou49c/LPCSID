for i in `find . -type f ` ;
do count=$(cat $i | wc -l) 
	if [ $count -gt 10 ] 
	then 
		echo "Nom du Fichier :"$i;  
		echo $count "lignes"
		mv $i $(echo $i | sed 's/f/g/g')
		echo "Nom du Fichier modifié :"$i;
	fi
	

done;