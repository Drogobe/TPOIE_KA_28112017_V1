PROGRAM Jeu_De_Loie_V1;

 USES crt, sysutils;



 CONST

	 maxPlateau : INTEGER = 66;
	 desMax : INTEGER = 10;

 VAR

	 place : INTEGER; 			
	 somme, diff : INTEGER;

 BEGIN

	 clrscr;

	 place:= 1; //Début a la case 1.

	 REPEAT

		 Randomize;
		 somme:=Random(desMax);
		 somme:=(somme+2);
		 writeln('Somme des des: ', somme); //Obtention de la somme des dés.


		 place:=(place + somme);

		 IF (place=58) THEN //Case retour
			begin
			place:=1;
			writeln('Vous avez touche la case tete de mort, retour a la base depart !');
			end;
			
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
			 begin
				diff:=(place-66);
				place:=(66-diff);
			 end;

		 writeln('Place actuelle : ', place);
		  
		 readln;

	 UNTIL (place=maxPlateau);  //Fin de la boucle,le joueur est à 66.
	
	 IF (place=66) THEN
		 writeln('Vous avez gagne !');

	 readln;

 END.
