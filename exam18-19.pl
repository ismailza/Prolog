% Examen Logique 2018-2019

% Exercice 4:

partitioner([],_,[],[]).
partitioner([T|R],X,[T|L1],L2):-T < X,partitioner(R,X,L1,L2).
partitioner([T|R],X,L1,[T|L2]):-T > X,partitioner(R,X,L1,L2).
partitioner([_|R],X,L1,L2):-partitioner(R,X,L1,L2).


% Exercice 5:

impairs([],[]).
impairs([X],[X]).
impairs([T|L],[T,_|R]):-impairs(L,R).
