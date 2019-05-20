hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y):-padre(Y,X),hombre(Y).

hijo(X,Y):-ni�o(X,Y),hombre(X).

hija(X,Y):-ni�o(X,Y),mujer(X).

hermano-o-hermana(X,Y):-dif(X,Y),ni�o(X,Z),ni�o(Y,Z).

hermano(X,Y):-hermano-o-hermana(X,Y),hombre(X).

hermana(X,Y):-hermano-o-hermana(X,Y),mujer(X).

cls:-write('\e[2J').



