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

area(triangulo,A):-triangulo(B,H), A is B*H/2.
area(cuadrado,A):-cuadrado(L), A is L*L.
area(circulo,A):-circulo(L), A is pi*L*L.
area(rectangulo,A):-rectangulo(B,H), A is B*H.

prod_y_sel(F1,A1,F2,A2):-area(F1,A1),area(F2,A2), A1<A2.
proy(F1,A1):-prod_y_sel(F1,A1,_,_).
mayor(F1,A1):-area(F1,A1), not(proy(F1,A1)).


