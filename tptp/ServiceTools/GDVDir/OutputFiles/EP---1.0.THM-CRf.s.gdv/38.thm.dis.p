fof(37,axiom,(
    ! [X1] :
      ( ~ hates(agatha,X1)
      | ~ hates(charles,X1) ) ),
    inference(fof_nnf,[status(thm)],[17]),
    [verified(thm)]).
fof(38,conjecture,(
    ! [X2] :
      ( ~ hates(agatha,X2)
      | ~ hates(charles,X2) ) ),
    inference(variable_rename,[status(thm)],[37])).
