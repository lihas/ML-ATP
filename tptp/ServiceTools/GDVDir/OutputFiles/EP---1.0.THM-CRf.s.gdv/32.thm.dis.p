fof(31,axiom,(
    ! [X1,X2] :
      ( ~ killed(X1,X2)
      | hates(X1,X2) ) ),
    inference(fof_nnf,[status(thm)],[6]),
    [verified(thm)]).
fof(32,conjecture,(
    ! [X3,X4] :
      ( ~ killed(X3,X4)
      | hates(X3,X4) ) ),
    inference(variable_rename,[status(thm)],[31])).
