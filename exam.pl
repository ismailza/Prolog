% Epreuve Prolog 20/21

% Exercice1

supprimerOcc(_,[],[]).
supprimerOcc(X,[X|Y],L):-supprimerOcc(X,Y,L).
supprimerOcc(X,[T|Y],[T|L]):-supprimerOcc(X,Y,L).

no_doubles([],[]).
no_doubles([T|Y],[T|L]):-supprimerOcc(T,Y,Z),no_doubles(Z,L).

% Exercice 2
insertQueue(X,[],[X]).
insertQueue(X,[T|Y],[T|L]):-insertQueue(X,Y,L).

loucherbem([],['l','e','m']).
loucherbem([T|Y],['l'|L]):-insertQueue(T,Y,A),insertQueue('e',A,B),insertQueue('m',B,L).

% Exercice 3

maxListe([M],M).
maxListe([T1,T2|Y],M):-T1 >= T2, maxListe([T1|Y],M).
maxListe([T1,T2|Y],M):-T1 < T2,maxListe([T2|Y],M).

minmax([L],M):-maxListe(L,M).
minmax([L1,L2|L],M):-maxListe(L1,M1),maxListe(L2,M2),M1 < M2, minmax([L1|L],M).
minmax([L1,L2|L],M):-maxListe(L1,M1),maxListe(L2,M2),M1 >= M2,minmax([L2|L],M).



