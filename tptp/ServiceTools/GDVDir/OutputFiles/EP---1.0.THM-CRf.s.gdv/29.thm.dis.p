fof(28,axiom,(
    ! [X1] :
      ( ~ lives(X1)
      | X1 = agatha
      | X1 = butler
      | X1 = charles ) ),
    inference(fof_nnf,[status(thm)],[5]),
    [verified(thm)]).
fof(29,conjecture,(
    ! [X2] :
      ( ~ lives(X2)
      | X2 = agatha
      | X2 = butler
      | X2 = charles ) ),
    inference(variable_rename,[status(thm)],[28])).
