prendre_med(X,tamiflu):-maladie(X,gripeA).
maladie(X,gripeA):-symptome(X,fievre),symptome(X,tousse).
symptome(X,fievre):-temperature(X,Y),Y>38.
symptome(ali,tousse).
temperature(ali,39).
