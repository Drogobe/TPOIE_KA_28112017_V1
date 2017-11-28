PROGRAM Jeu_De_Loie2;

 USES crt, sysutils;



 CONST

	 maxPlateau : INTEGER = 66;
	 

 VAR

	 place : INTEGER; 			
	 somme, diff : INTEGER;
	 des1, des2: INTEGER;

 BEGIN

	 clrscr;

	 place:= 1; //Debut case 1.

	 REPEAT

		 writeln('veuillez saisir le resultat d un des');
		 readln(des1);
		 writeln('veuillez saisir le resultat du 2 eme des');
		 readln(des2);
		 somme:= (des1 + des2);
		 IF ( somme >=2 )AND (somme <=12) THEN
		     writeln('Somme des des: ', somme) //Obtention de la somme des des.
		 ELSE 
		     writeln('erreur');    

         place:=(place + somme);

		 IF (place=58) THEN //Case retour
			 BEGIN
			 place:=1;
			 writeln('Vous avez touche la case tete de mort, retour a la base depart !');
			 END;
			
		 IF (place=9) THEN
			 place:=(place+somme);

		 IF (place=18) THEN
			 place:=(place+somme);

		 IF (place=27) THEN
			 place:=(place+somme);

		 IF (place=36) THEN
			 place:=(place+somme);

		 IF (place=45) THEN
			 place:=(place+somme);
 
		 IF (place=54) THEN
			 place:=(place+somme);


		 IF (place>66) THEN
			 BEGIN
				diff:=(place-66);
				place:=(66-diff);
			 END;

		 writeln('Place actuelle : ', place);
		  
		 readln;

	 UNTIL (place=maxPlateau);  //Fin de la boucle, le joueur est arriver à 66.
	
	 IF (place=66) THEN
		 writeln('Vous avez gagne !');

	 readln;

 END.
