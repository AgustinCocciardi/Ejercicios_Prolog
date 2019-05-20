hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

niño(X,Y):-padre(Y,X),hombre(Y).

hijo(X,Y):-niño(X,Y),hombre(X).

hija(X,Y):-niño(X,Y),mujer(X).

hermano-o-hermana(X,Y):-dif(X,Y),niño(X,Z),niño(Y,Z).

hermano(X,Y):-hermano-o-hermana(X,Y),hombre(X).

hermana(X,Y):-hermano-o-hermana(X,Y),mujer(X).

cls:-write('\e[2J').



