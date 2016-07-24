cnf(com_plus, axiom, p(R1, R2)=p(R2,R1)).
cnf(ass_plus, axiom, p(R1, p(R2,R3))=p(p(R1,R2),R3)).

cnf(ass_mul, axiom, m(R1, m(R2,R3))=m(m(R1,R2),R3)).

cnf(es_mul, axiom, m(empty,R)=empty).
cnf(eps_mul, axiom, m(epsilon,R)=R).

cnf(es_neutral, axiom, p(empty,R)=R).

cnf(dist1, axiom, m(p(R1,R2),R3)=p(m(R1, R3), m(R2,R3))).
cnf(dist2, axiom, m(R1, p(R2,R3))=p(m(R1, R2), m(R1,R3))).

cnf(idemp, axiom, p(R,R)=R).
cnf(idems, axiom, s(s(R))=s(R)).

cnf(ses, axiom, s(empty)=eps).

cnf(seps, axiom, s(eps)=eps).

cnf(sexpand, axiom, s(R) = p(eps, m(s(R),R))).

cnf(semptyexpand, axiom, s(R) = s(p(eps, R))).

cnf(arto, axiom, R!=p(m(R,S),T)|R=m(T,s(S))).

fof(hard, conjecture, m(m(1,0),s(m(1,0))) = m(1, m(s(m(0,1)), 0))).



