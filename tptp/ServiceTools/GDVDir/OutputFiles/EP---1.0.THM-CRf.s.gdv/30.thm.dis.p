fof(29,axiom,(
    ! [X2] :
      ( ~ lives(X2)
      | X2 = agatha
      | X2 = butler
      | X2 = charles ) ),
    inference(variable_rename,[status(thm)],[28]),
    [verified(thm)]).
fof(30,conjecture,(
    ! [X1] :
      ( X1 = charles
      | X1 = butler
      | X1 = agatha
      | ~ lives(X1) ) ),
    inference(split_conjunct,[status(thm)],[29])).
