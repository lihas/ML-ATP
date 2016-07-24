fof(32,axiom,(
    ! [X3,X4] :
      ( ~ killed(X3,X4)
      | hates(X3,X4) ) ),
    inference(variable_rename,[status(thm)],[31]),
    [verified(thm)]).
fof(33,conjecture,(
    ! [X2,X1] :
      ( hates(X1,X2)
      | ~ killed(X1,X2) ) ),
    inference(split_conjunct,[status(thm)],[32])).
