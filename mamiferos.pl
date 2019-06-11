mamiferos(mamifero,terrestre).
mamiferos(mamifero,acuatico).
mamiferos(acuatico,delfin).
mamiferos(acuatico,nutria).
mamiferos(terrestre,tigre).
mamiferos(terrestre,mono).

animales(Z):-mamiferos(X,Y),mamiferos(Y,Z).
arbolani(Y,X):-mamiferos(X,Y).
tipomami(Y):-mamiferos(mamifero,Y);mamiferos(Y,mamifero).
tipoani(Y,Z):-mamiferos(X,Y),mamiferos(Y,Z).