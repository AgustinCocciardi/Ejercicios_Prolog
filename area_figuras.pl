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

area_triangulo(B,H,A):-es_figura(triangulo),triangulo(B,H), A is (B*H)/2.
area_rectangulo(B,H,A):-es_figura(rectangulo),rectangulo(B,H), A is B*H.
area_cuadrado(L,A):-es_figura(cuadrado),cuadrado(L), A is L*L.
area_circulo(L,A):-es_figura(circulo),circulo(L), A is pi*L*L.

area_figura(FIG,A):-es_figura(FIG),dif(FIG,cuadrado),dif(FIG,circulo),dif(FIG,rectangulo),triangulo(B,H),area_triangulo(B,H,A).
area_figura(FIG,A):-es_figura(FIG),dif(FIG,cuadrado),dif(FIG,circulo),dif(FIG,triangulo),rectangulo(B,H),area_rectangulo(B,H,A).
area_figura(FIG,A):-es_figura(FIG),dif(FIG,triangulo),dif(FIG,circulo),dif(FIG,rectangulo),cuadrado(L),area_cuadrado(L,A).
area_figura(FIG,A):-es_figura(FIG),dif(FIG,cuadrado),dif(FIG,triangulo),dif(FIG,rectangulo),circulo(L),area_circulo(L,A).

producto_cartesiano(F,A,G,B):-area_figura(F,A),area_figura(G,B).
seleccion_menor(F,A,G,B):-producto_cartesiano(F,A,G,B), A<B.
proyeccion(F,A):-seleccion_menor(F,A,_,_).
figura_mayor(F,A):-area_figura(F,A),not(proyeccion(F,A)).
