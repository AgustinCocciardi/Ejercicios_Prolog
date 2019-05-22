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
fibonacci(X,Y):-X1 is X-1,X2 is X-2,fibonacci(X1,Y1),fibonacci(X2,Y2),Y is Y1+Y2.



cls:-write('\e[2J').
