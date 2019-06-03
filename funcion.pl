%supongamos una funcion definida por partes
%       -X+1 si X<0
%f(X)=   1  si 0<=X<=1
%        X si X>1

funcion(X,Y):-Y is -X+1,X<0,!.
funcion(X,1):-X>=0,X=<1,!.
funcion(X,X):-X>1.

factorial(0,1):-!.
factorial(X,F):-X>0,X1 is X-1,factorial(X1,F1), F is X*F1.

fibonacci(0,0):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):-X>1,X1 is X-1,X2 is X-2,fibonacci(X1,Y1),fibonacci(X2,Y2),Y is Y1+Y2.

prod_suma_sucesiva(X,1,X):-!.
prod_suma_sucesiva(X,Y,P):-Y>1,Y1 is Y-1,prod_suma_sucesiva(X,Y1,P1),P is P1+X.

pow_prod_sucesiva(_,0,1):-!.
pow_prod_sucesiva(X,1,X):-!.
pow_prod_sucesiva(X,Y,P):-Y>1,Y1 is Y-1,pow_prod_sucesiva(X,Y1,P1), P is P1*X.

div_resta_sucesiva(X,Y,0):-X<Y,!.
div_resta_sucesiva(X,Y,P):-X>=Y,X1 is X-Y,div_resta_sucesiva(X1,Y,P1), P is P1+1.

div_resta_sucesiva_resto(X,Y,0,X):-X<Y,!.
div_resta_sucesiva_resto(X,Y,P,R):-X>=Y, X1 is X-Y, div_resta_sucesiva_resto(X1,Y,P1,R1), P is P1+1, R is R1.

cls:-write('\e[2J').
