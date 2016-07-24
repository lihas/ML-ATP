fof(socrates, axiom, (philosopher(socrates)|philosopher(plato))).
fof(hume,     axiom, (philosopher(hume))).
fof(diff_sp,  axiom, socrates!=plato).
fof(diff_hp,  axiom, hume!=plato).
fof(diff_hs,  axiom, hume!=socrates).
fof(phil_wise, axiom, (![X]:(philosopher(X) => wise(X)))).
fof(is_there_wisdom, question, (?[X,Y]:(wise(X)&wise(Y)&X!=Y))).

