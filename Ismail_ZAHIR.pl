% Examen Logique 22/12/2022.
% Nom : Ismail ZAHIR
% CNE : M130034716


% Exercice 1:

fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F):-N1 is N-1,N2 is N-2,fibonacci(N1,F1),fibonacci(N2,F2),F is F1+F2.

% Exercice 2:




% Exercice 3:

term(1,sing,[e]).
term(2,sing,[e,s]).
term(3,sing,[e]).
term(1,plur,[o,n,s]).
term(2,plur,[e,z]).
term(3,plur,[e,n,t]).

supprimerER([_,_],[]).
supprimerER([T|R],[T|L]):-supprimerER(R,L).

inserer(X,[],[X]).
inserer(X,[T|R],[T|L]):-inserer(X,R,L).

concate(L,[],L).
concate(L1,[T|R],L):-inserer(T,L1,L2),concate(L2,R,L).

conjuger(V,S,N,C):-supprimerER(V,VSR),term(S,N,TER),concate(VSR,TER,C).
