es_un_pais(argentina).
es_un_pais(chile).
es_un_pais(peru).

limita_con(argentina,chile).
limita_con(argentina,brasil).
limita_con(bolivia,brasil).
limita_con(bolivia,paraguay).
limita_con(bolivia,chile).
limita_con(bolivia,argentina).
limita_con(peru,ecuador).

son_limitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).

son_translimitrofes(X,Y):-dif(X,Y),son_limitrofes(X,Z),son_limitrofes(Z,Y),not(son_limitrofes(X,Y)).

cls:-write('\e[2J').
