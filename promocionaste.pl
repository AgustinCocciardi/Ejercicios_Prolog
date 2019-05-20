parcial1(ana,7).
parcial1(juan,4).
parcial1(marcos,2).
parcial1(jose,7).
parcial1(marta,4).
parcial1(alejandro,1).
parcial1(martin,2).
parcial1(pablo,7).

parcial2(ana,9).
parcial2(juan,5).
parcial2(marcos,2).
parcial2(jose,2).
parcial2(marta,10).
parcial2(alejandro,8).
parcial2(martin,4).
parcial2(abdul,3).

recursa(X):-parcial1(X,N1),parcial2(X,N2),(N1<4;N2<4).
promociona(X,P):-parcial1(X,N1),parcial2(X,N2),(N1>6,N2>6),P is(N1+N2)/2.
cursada(X):-parcial1(X,_),parcial2(X,_),not(recursa(X)),not(promociona(X,_)).
ausente(X):-((parcial1(X,_),not(parcial2(X,_));(parcial2(X,_),not(parcial1(X,_))))).






