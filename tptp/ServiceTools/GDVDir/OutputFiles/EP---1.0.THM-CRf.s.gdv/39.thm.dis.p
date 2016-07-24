fof(38,axiom,(
    ! [X2] :
      ( ~ hates(agatha,X2)
      | ~ hates(charles,X2) ) ),
    inference(variable_rename,[status(thm)],[37]),
    [verified(thm)]).
fof(39,conjecture,(
    ! [X1] :
      ( ~ hates(charles,X1)
      | ~ hates(agatha,X1) ) ),
    inference(split_conjunct,[status(thm)],[38])).
