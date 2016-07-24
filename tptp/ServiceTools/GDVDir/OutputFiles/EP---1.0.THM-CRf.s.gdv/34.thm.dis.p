fof(16,axiom,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => ~ richer(X1,X2) ) ),
    inference(fof_simplification,[status(thm)],[7,theory(equality)]),
    [verified(thm)]).
fof(34,conjecture,(
    ! [X1,X2] :
      ( ~ killed(X1,X2)
      | ~ richer(X1,X2) ) ),
    inference(fof_nnf,[status(thm)],[16])).
