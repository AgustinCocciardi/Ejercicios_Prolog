%con el porciento puedo hacer comentarios

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

plato_principal(X):-carne(X);pescado(X).

%a)

menu(X,Y,Z):-entrada(X),plato_principal(Y),postre(Z).

%b)

menu_consome(Y,Z):-menu(consomé,Y,Z).


%c)

menu_sin_flan(X,Y,Z):-dif(Z,flan),menu(X,Y,Z).






