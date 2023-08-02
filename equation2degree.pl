% Resoudre une equation de 2eme degree
% AX²+BX+C=0
%

resoudre(A,B,C):-A==0 , B==0, C==0,write("infinite de solutions").
resoudre(A,B,C):-A==0 , B==0, C\==0,write("pas de solution").
resoudre(A,B,C):-A==0 , B\==0,X is C/B, write("Une solution : X = "), write(X).
resoudre(A,B,C):-A\==0 , D is B*B-4*A*C, D < 0, write("Deux solutions Complexes").
resoudre(A,B,C):-A\==0 , D is B*B-4*A*C, D > 0,X1 is (-B+sqrt(D))/(2*A), X2 is (-B-sqrt(D))/(2*A), write("Deux solutions : X1 = "),write(X1), write(" X2 = "), write(X2).
resoudre(A,B,C):-A\==0 , D is B*B-4*A*C, D == 0,X is -B/(2*A), write("Une solution : X = "),write(X).
