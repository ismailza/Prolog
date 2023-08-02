% Examen Logique 2016-2017

% Exercice 3:

prix(pomme,7).
prix(melon,13).
prix(banane,8).
total([],0).
total([X,Y],T):-prix(X,P),T is Y*P.
total([L1|R],T):-total(L1,T1),total(R,S),T is T1+S.

% Exercice 4:

diff([],[],[]).
diff([T1|R1],[T2|R2],[T|L]):-T is T1-T2,diff(R1,R2,L).
