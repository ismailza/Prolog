
successif([],_).
successif([X|Y],[X|L]):-successif(Y,L).

inclus([],_).
inclus([T|Y],[T|L]):-successif(Y,L).
inclus([T|Y],[_|L]):-inclus([T|Y],L).
