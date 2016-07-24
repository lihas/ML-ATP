fof(41,axiom,(
    ! [X2] :
      ( X2 = butler
      | hates(agatha,X2) ) ),
    inference(variable_rename,[status(thm)],[40]),
    [verified(thm)]).
fof(42,conjecture,(
    ! [X1] :
      ( hates(agatha,X1)
      | X1 = butler ) ),
    inference(split_conjunct,[status(thm)],[41])).
