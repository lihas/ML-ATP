fof(46,axiom,(
    ! [X1] :
      ( ~ hates(agatha,X1)
      | hates(butler,X1) ) ),
    inference(fof_nnf,[status(thm)],[11]),
    [verified(thm)]).
fof(47,conjecture,(
    ! [X2] :
      ( ~ hates(agatha,X2)
      | hates(butler,X2) ) ),
    inference(variable_rename,[status(thm)],[46])).
