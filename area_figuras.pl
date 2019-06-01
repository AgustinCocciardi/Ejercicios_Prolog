triangulo(2,3).
triangulo(3,6).
%triangulo(100,100).
cuadrado(5).
cuadrado(10).
rectangulo(2,7).
rectangulo(5,5).
rectangulo(150,30).
circulo(3).
circulo(4).
%circulo(100).

es_figura(triangulo).
es_figura(cuadrado).
es_figura(circulo).
es_figura(rectangulo).

area_triangulo(B,H,A):-triangulo(B,H), A is (B*H)/2.
area_rectangulo(B,H,A):-rectangulo(B,H), A is B*H.
area_cuadrado(L,A):-cuadrado(L), A is L*L.
area_circulo(L,A):-circulo(L), A is pi*L*L.

es_distinto(X,Y,Z,W):-dif(X,Y),dif(X,Z),dif(X,W).

area_figura(FIG,A):-es_figura(FIG),es_distinto(FIG,cuadrado,rectangulo,circulo),triangulo(B,H),area_triangulo(B,H,A).
area_figura(FIG,A):-es_figura(FIG),es_distinto(FIG,cuadrado,triangulo,circulo),rectangulo(B,H),area_rectangulo(B,H,A).
area_figura(FIG,A):-es_figura(FIG),es_distinto(FIG,triangulo,circulo,rectangulo),cuadrado(L),area_cuadrado(L,A).
area_figura(FIG,A):-es_figura(FIG),es_distinto(FIG,cuadrado,rectangulo,triangulo),circulo(L),area_circulo(L,A).

producto_cartesiano(F,A,G,B):-area_figura(F,A),area_figura(G,B).
seleccion_menor(F,A,G,B):-producto_cartesiano(F,A,G,B), A<B.
proyeccion(F,A):-seleccion_menor(F,A,_,_).
figura_mayor(F,A):-area_figura(F,A),not(proyeccion(F,A)).
