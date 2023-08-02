:-dynamic dans/2.
:-dynamic possedeCle/2.
:-dynamic cle/2.

dans(livre,chambre).
dans(personne,cuisine).
ferme(chambre).
ferme(salon).
ferme(cave).
cle(chambre,cave).
cle(salon,cuisine).
cle(cave,grenier).

possedeCle(personne,C):-not(cle(C,_)).
possedeCle(personne,C):-cle(C,X),possedeCle(personne,X),apporter(personne,X),write(X),write("---"),retract(cle(C,X)).

apporter(X,Y):-dans(X,D),possedeCle(personne,D),possedeCle(personne,Y),retract(dans(X,D)),assert(dans(X,Y)).
% apporter(X,Z):-apporter(X,Y),apporter(Y,Z).

vider:-abolish(dans/2),abolish(cle/2),abolish(possedeCle/2).
