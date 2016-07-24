fof(35,axiom,(
    ! [X3,X4] :
      ( ~ killed(X3,X4)
      | ~ richer(X3,X4) ) ),
    inference(variable_rename,[status(thm)],[34]),
    [verified(thm)]).
fof(36,conjecture,(
    ! [X2,X1] :
      ( ~ richer(X1,X2)
      | ~ killed(X1,X2) ) ),
    inference(split_conjunct,[status(thm)],[35])).
