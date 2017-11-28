ALGORITHME Jeu_De_Loie_V1



	 BUT: Faire un jeu de l oie 
	 ENTREE: Appuyer sur Enter
	 SORTIE: Indique la place, à chaque tour.

 CONST

	 MaxPlateau <- 66 : ENTIER
	 desMin <- 2 : ENTIER
	 desMax <- 12 : ENTIER

 VAR
	
	 place : ENTIER 
	 somme, diff : ENTIER
	
	
 DEBUT
	
	 place<- 1

	 REPETER

		 somme<- ALEATOIRE(désMax)
		 somme<- somme+2
		 ECRIRE ("Somme des dés: ", somme)


		 place<-(place + somme)

		 SI (place=58) alors //Case retour
			place<-1
			ECRIRE("Vous avez touche la case retour, retour a la base depart !")
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
		

	 JUSQU A (place=maxPlateau)  //Sortie de la boucle, donc le joueur est arrive place 66.
	
	 SI (place=66) ALORS
		ECRIRE ('Vous avez gagne !')
	 FINSI

 FIN



