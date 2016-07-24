fof(j_assoc,   axiom, ![X,Y,Z]:j(j(X,Y),Z)=j(X,j(Y,Z))).
fof(j_neutral, axiom, ![X]:j(X,0)=X).
fof(j_inv,     axiom, ![X]:?[Y]:j(X,Y)=0).
fof(j_abelian, axiom, ![X,Y]:l(X,Y)=j(Y,X)).


fof(f_assoc,   axiom, ![X,Y,Z]:f(f(X,Y),Z)=f(X,f(Y,Z))).
fof(distrib1,  axiom, ![X,Y,Z]:f(X,j(Y,Z)) = j(f(X,Y),f(X,Z))).
fof(distrib2,  axiom, ![X,Y,Z]:f(j(X,Y),Z) = j(f(X,Z), f(Y,Z))).

fof(x3eqX,     axiom, ![X]:f(X,f(X,X))=X).

fof(f_abelian, conjecture, ![X,Y]:f(X,Y)=f(Y,X)).
