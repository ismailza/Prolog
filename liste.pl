% Dernier element de la liste
dernier([X],X).
dernier([_|Y],D):-dernier(Y,D).

% La longueur d'une liste
longueur([],0).
longueur([_|X],L):-longueur(X,N),L is N+1.

% Insertion a la queue de la liste
inserer(X,[],[X]).
inserer(X,[T|Y],[T|L]):-inserer(X,Y,L).

% Supprimer a la queue de la liste
supprimer([],[]).
supprimer([_],[]).
supprimer([T|Y],[T|L]):-supprimer(Y,L).

% Supprimer dans une position donnee
supprimerPos(Pos,_,_):-Pos < 1,write("Position invalide").
supprimerPos(Pos,L,_):-longueur(L,T),Pos>T,write("Position invalide").
supprimerPos(1,[_|Y],Y).
supprimerPos(P,[T|Y],[T|L]):-P1 is P-1, supprimerPos(P1,Y,L).

% Insertion dans une position donnee
insererPos(_,Pos,_,_):-Pos < 1,write("Position invalide").
insererPos(_,Pos,L,_):-longueur(L,T),Pos>T,write("Position invalide").
insererPos(X,1,L,[X|L]).
insererPos(X,Pos,[T|Y],[T|L]):-P1 is Pos-1,insererPos(X,P1,Y,L).

% Suppression de la premiere occurence
supprimer(_,[],[]).
supprimer(X,[X|Y],Y).
supprimer(X,[T|Y],[T|L]):-supprimer(X,Y,L).


% Supprimer toutes occurences
supprimerOccurence(_,[],[]).
supprimerOccurence(X,[X|Y],L):-supprimerOccurence(X,Y,L).
supprimerOccurence(X,[T|Y],[T|L]):-supprimerOccurence(X,Y,L).

% Concatenation de deux listes
concate(L,[],L).
concate(L1,[T|R],L):-inserer(T,L1,L2),concate(L2,R,L).

% Maximum dans une liste

maxListe([],_):-write("Liste vide").
maxListe([M],M).
maxListe([A,B|Y],M):-A >= B,maxListe([A|Y],M).
maxListe([A,B|Y],M):-A < B,maxListe([B|Y],M).

% Minimum dans une liste

minListe([],_):-write("Liste vide").
minListe([M],M).
minListe([A,B|Y],M):-A =< B,minListe([A|Y],M).
minListe([A,B|Y],M):-A > B,minListe([B|Y],M).

% Tri d'une liste d'entiers

tri([],[]).
tri(L,[M|T]):-minListe(L,M),supprimer(M,L,R),tri(R,T).

% La somme d'une liste d'entiers

somme([X],X).
somme([X|Y],S):-somme(Y,N),S is N+X.

% Inverser une liste

inverser([],[]).
inverser([T|Y],L):-inverser(Y,Z),concate(Z,[T],L).

% Suppression de redondance

suppRdn([],[]).
suppRdn([T|Y],[T|L]):-supprimerOccurence(T,Y,R),suppRdn(R,L).

% Intersection de deus listes sans repetition

appartient(X,[X|_]).
appartient(X,[_|Y]):-appartient(X,Y).

intersect([],_,[]).
intersect([T|Y],Z,[T|L]):-supprimerOccurence(T,Y,R),appartient(T,Z),intersect(R,Z,L).
intersect([_|Y],Z,L):-intersect(Y,Z,L).

% Union de deux liste



