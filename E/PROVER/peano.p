cnf(1, axiom, 1=s(0)).
cnf(2, axiom, 2=s(1)).
cnf(3, axiom, 3=s(2)).
cnf(4, axiom, 4=s(3)).
cnf(5, axiom, 5=s(4)).
cnf(6, axiom, 6=s(5)).
cnf(7, axiom, 7=s(6)).
cnf(8, axiom, 8=s(7)).
cnf(9, axiom, 9=s(8)).
cnf(10, axiom, 10=s(9)).
cnf(11, axiom, 11=s(10)).
cnf(12, axiom, 12=s(11)).
cnf(13, axiom, 13=s(12)).
cnf(14, axiom, 14=s(13)).
cnf(15, axiom, 15=s(14)).
cnf(16, axiom, 16=s(15)).
cnf(17, axiom, 17=s(16)).
cnf(18, axiom, 18=s(17)).
cnf(19, axiom, 19=s(18)).

cnf(ab, axiom, a(X,0) = X).
cnf(ar, axiom, a(X,s(Y)) = s(a(X,Y))).
cnf(ar, axiom, a(X,n(Y)) = v(X,Y)).

cnf(mb, axiom, m(X,0) = 0).
cnf(mr, axiom, m(X,s(Y)) = a(X,m(X,Y))).
cnf(mn, axiom, m(X,n(Y)) = n(m(X,Y))).


cnf(vb, axiom, v(X,0)=X).
cnf(vr, axiom, v(X,s(Y))=p(v(X,Y))).


cnf(pselim, axiom, p(s(X))=X).
cnf(spelim, axiom, s(p(X))=X).

cnf(nb, axiom, n(0)=0).
cnf(nrs, axiom, p(n(X))=n(s(X))).
cnf(nrp, axiom, n(p(X))=s(n(X))).


#fof(res, question, m(3,3)=9).
# fof(res, question, v(1,4)=n(3)).

