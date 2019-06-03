fibonacci(0,1):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):-X1 is X-1, fibonacci(X1,Y1), X2 is X-2, fibonacci(X2,Y2), Y is Y1+Y2.

factorial(0,1):-!.
factorial(X,Y):- X1 is X-1, factorial(X1,Y1), Y is X*Y1.


