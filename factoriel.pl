fact(0,1).
fact(X,N):-X>0,X1 is X-1,fact(X1,N1),N is X*N1.
