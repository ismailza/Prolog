:-dynamic dans/2.
:-dynamic ouvert/2.

dans(r,a).
porte(a,c).
porte(c,d).
porte(d,e).
ouvert(a,c).

ouvert(d,e).
ouvert(e,f).

deplacer(X,Y):-dans(r,X),porte(X,Y),ouvert(X,Y),retract(dans(r,X)),assert(dans(r,Y)),retract(ouvert(X,Y)),write("r est dans "),write(Y).
deplacer(X,Y):-dans(r,X),porte(X,Y),assert(ouvert(X,Y)),write("Porte "),write(X),write(Y),write(" fermee - "),deplacer(X,Y).
deplacer(X,Z):-deplacer(X,Y),write(" - "),deplacer(Y,Z).

vider:-abolish(dans/2),abolish(ouvert/2).
