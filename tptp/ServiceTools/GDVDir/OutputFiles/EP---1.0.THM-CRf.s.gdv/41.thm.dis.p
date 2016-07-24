fof(40,axiom,(
    ! [X1] :
      ( X1 = butler
      | hates(agatha,X1) ) ),
    inference(fof_nnf,[status(thm)],[9]),
    [verified(thm)]).
fof(41,conjecture,(
    ! [X2] :
      ( X2 = butler
      | hates(agatha,X2) ) ),
    inference(variable_rename,[status(thm)],[40])).
