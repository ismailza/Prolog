% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

febo(0,1).
febo(1,1).
febo(N,F):-N>1,N1 is N-1,N2 is N-2,febo(N1,F1),febo(N2,F2),F is F1+F2.
