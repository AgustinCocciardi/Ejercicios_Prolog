ventas1ersemestre(juan,25000).
ventas1ersemestre(gill,14000).
ventas1ersemestre(sancho,5000).
ventas1ersemestre(laura,25500).
ventas1ersemestre(juana,30100).
ventas1ersemestre(roberta,10000).

ventas2dosemestre(juan,30000).
ventas2dosemestre(gill,500).
ventas2dosemestre(sancho,5000).
ventas2dosemestre(laura,14000).
ventas2dosemestre(juana,90000).
ventas2dosemestre(horacio,15000).

liquidacion(X,P):-ventas1ersemestre(X,P1),ventas2dosemestre(X,P2),P1>20000,P2>20000,P is (P1+P2)*0.2.
liquidacion(X,P):-ventas1ersemestre(X,P1),ventas2dosemestre(X,P2),(P1<20000;P2<20000),P is (P1+P2)*0.1.
liquidacion(X,P):-(ventas1ersemestre(X,P1),not(ventas2dosemestre(X,_)),P is P1*0.05).
liquidacion(X,P):-(ventas2dosemestre(X,P2),not(ventas1ersemestre(X,_)),P is P2*0.05).
