madre(gabriela,veronica).
madre(carola,pedro).
madre(veronica,pablo).
madre(veronica,ana).
madre(gabriela,jose).
madre(ailen,felipe).
madre(fabiana,agustin).
madre(sara,fabiana).
madre(generosa,daniel).
madre(fabiana,valentin).

padre(daniel,valentin).
padre(roberto,fabiana).
padre(joseph,daniel).
padre(daniel,agustin).
padre(nicolas,felipe).
padre(mario,jose).
padre(jose,daniela).
padre(jose,julieta).
padre(facundo,veronica).
padre(fernando,pedro).
padre(pedro,pablo).
padre(pedro,ana).

abuelo_materno(X,AM):-madre(M,X),padre(AM,M).
abuelo_paterno(X,AP):-padre(P,X),padre(AP,P).

abuela_materna(X,AM):-madre(M,X),madre(AM,M).
abuela_paterna(X,AP):-padre(P,X),madre(AP,P).
