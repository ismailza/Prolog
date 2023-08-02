% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

dernier([X],X).
dernier([_|Y],D):-dernier(Y,D).

longueur([],0).
longueur([_|X],L):-longueur(X,N),L is N+1.

inserer([],X,[X]).
