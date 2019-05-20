numero(1).
numero(2).
numero(3).

producto_cartesiano(X,Y):-numero(X),numero(Y).

seleccion_menor(X,Y):-producto_cartesiano(X,Y),X<Y.
proyeccion_Menor(X):-seleccion_menor(X,_).
maximo(X):-numero(X),not(proyeccion_Menor(X)).

seleccion_mayor(X,Y):-producto_cartesiano(X,Y),X>Y.
proyeccion_Mayor(X):-seleccion_mayor(X,_).
minimo(X):-numero(X),not(proyeccion_Mayor(X)).
