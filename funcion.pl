%supongamos una funcion definida por partes

herramienta(pinza,150).
herramienta(martillo,100).
herramienta(tenaza,120).
herramienta(taladro,340).
herramienta(amoladora,340).

producto_cartesiano(X,P,Y,Q):-herramienta(X,P),herramienta(Y,Q).
seleccion_menor(X,P,Y,Q):-producto_cartesiano(X,P,Y,Q),P<Q.
proyeccion(X,P):-seleccion_menor(X,P,_,_).
herramienta_mayor(X,P):-herramienta(X,P),not(proyeccion(X,P)).
