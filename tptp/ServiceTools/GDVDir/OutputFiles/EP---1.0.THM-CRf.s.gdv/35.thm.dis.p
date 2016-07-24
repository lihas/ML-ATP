fof(34,axiom,(
    ! [X1,X2] :
      ( ~ killed(X1,X2)
      | ~ richer(X1,X2) ) ),
    inference(fof_nnf,[status(thm)],[16]),
    [verified(thm)]).
fof(35,conjecture,(
    ! [X3,X4] :
      ( ~ killed(X3,X4)
      | ~ richer(X3,X4) ) ),
    inference(variable_rename,[status(thm)],[34])).
