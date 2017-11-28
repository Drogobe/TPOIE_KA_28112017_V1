ALGORITHME Jeu_De_Loie2



	 BUT: Faire un jeu de l oie 
     ENTREE: Appuyer sur Enter
	 SORTIE: Indique la place, à chaque tour.//Spécification

 CONST

	 MaxPlateau <- 66 : ENTIER //Initialisation de la constante
	

 VAR
	
	 place : ENTIER 
	 somme, diff : ENTIER
	 des1, des2 : ENTIER//Déclaration
	
 DEBUT
	
	 place<- 1//Debut case 1 

	 REPETER

         ECRIRE: ("Veuillez saisir le resultat d un des")  
		 LIRE des1
		 ECRIRE: ("Veuillez saisir le resultat du 2 eme des") 
		 LIRE des2

		 SI ( somme >=2) ET ( somme <= 12) ALORS
		     ECRIRE ('somme des des:', somme)
		 SINON 
		     ECRIRE ('Erreur')

		 ECRIRE ("Somme des dés: ", somme)

         place<-(place + somme)

		 SI (place=58) alors //Case retour
			place<-1
			ECRIRE("Vous avez touche la case tete de mort, retour a la base depart !")
		 FINSI
			
		 SI (place=9) ALORS
			place<-(place+somme)
		 FINSI

		 SI (place=18) ALORS
			place<-(place+somme)
		 FINSI

		 SI (place=27) ALORS
			place:=<-(place+somme)
		 FINSI

		 SI (place=36) ALORS
			place<-(place+somme)
		 FINSI

		 SI (place=45) ALORS
			place<-(place+somme)
		 FINSI

		 SI (place=54) ALORS
			place<-(place+somme)
		 FINSI

		 SI (place>66) ALORS
				diff<-(place-66)
				place<-(66-diff)
		 FINSI

		 ECRIRE ("Place actuelle : ", place)
		

	 JUSQU A (place=maxPlateau)  //Fin de la boucle, le joueur est arriver à 66.
	
	 SI (place=66) ALORS
		ECRIRE ('Vous avez gagne !')
	 FINSI

 FIN//Corps de l'algorithme



