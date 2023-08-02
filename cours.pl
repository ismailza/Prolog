% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

% Appartenance
app(X,[X|_]).
app(X,[_|L]):-app(X,L).
% Longueur
long([],0).
long([_|L],N):-long(L,M),N is M+1.

q(a).
q(b).
q(c).
r(b,b1).
r(c,c1).
r(a,a1).
r(a,a2).
r(a,a3).
p(X,Y) :-!,q(X),r(X,Y).
p(d,d1).
