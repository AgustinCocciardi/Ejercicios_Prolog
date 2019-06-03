parejas(1,1):-!.
parejas(2,1):-!.
parejas(M,P):-M1 is M-1, parejas(M1,P1), M2 is M-2, parejas(M2,P2), P is P1+P2.
