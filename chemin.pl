lie(rabat,casa).
lie(casa,settat).
lie(settat,marrackech).
lie(marrackech,agadir).
chemin(X,Y):-lie(X,Y),write(X),write(" <---> "),write(Y).
chemin(X,Z):-lie(X,Y),write(X),write(" <---> "),chemin(Y,Z).
