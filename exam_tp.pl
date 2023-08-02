% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.


element(X,[X|_]).
element(X,[_|L]):-element(X,L).

sup_oc(_,[],[]).
sup_oc(X,[Y|L],[Y|L1]):-Y\==X,sup_oc(X,L,L1).
sup_oc(X,[_|L],L1):-sup_oc(X,L,L1).


sans_rep([],[]).
sans_rep([X|L],[X|L2]):-element(X,L),sup_oc(X,L,L1),sans_rep(L1,L2).
sans_rep([X|L],[X|L2]):-sans_rep(L,L2).


rang_imp([X],[X]).
rang_imp([X,_|L],[X|L1]):-rang_imp(L,L1).

rang_pai([_],[]).
rang_pai([_,X|L],[X|L1]):-rang_pai(L,L1).

inclus([],_).
inclus([X|L],[Z|L1]):-X==Z,inclus(L,L1).
inclus([X|L],[_|L1]):-inclus([X|L],L1).

elem_successif(X,Y,[X,Y|_]).
elem_successif(X,Y,[_|L]):-elem_successif(X,Y,L).

%jap([],0).
%jap([a],2).
%jap([b],3).
%jap([c],4).
%jap([X,Y|L],N):-jap(L,N3),jap([X],N2),jap([Y],N1),N is N2+N1+N3.

jap([],0).
jap([itchi],1).
jap([ni],2).
jap([san],3).
jap([shi],4).
jap([go],5).
jap([roku],6).
jap([shitchi],7).
jap([hatchi],8).
jap([ku],9).
jap([giu],10).
jap([hyaku],100).
jap([sen],1000).
jap([man],10000).
jap([X,Y|L],N):-jap(L,N3),jap([X],N2),jap([Y],N1),N is N2+N1+N3.


split(_,[],[],[]).
split(X,[Y|L],[Y|L1],L2):-Y=<X,split(X,L,L1,L2).
split(X,[Y|L],L1,[Y|L2]):-split(X,L,L1,L2).



tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).
listtran([],[]).
listtran([X|L],[Y|L1]):-tran(X,Y),listtran(L,L1).


aumoins(_,0,[]).
aumoins(X,N,[Y|L]):-Y==X,aumoins(X,N1,L),N is 1+N1.
aumoins(X,N,[_|L]):-aumoins(X,N,L).











