% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

pere(jawad,khalid).
pere(ali,rachid).
pere(rachid,karim).
pere(karim,mohammed).
ancetre(X,Y):-pere(X,Y).
ancetre(X,Y):-pere(X,Z),ancetre(Z,Y).
