fof(47,axiom,(
    ! [X2] :
      ( ~ hates(agatha,X2)
      | hates(butler,X2) ) ),
    inference(variable_rename,[status(thm)],[46]),
    [verified(thm)]).
fof(48,conjecture,(
    ! [X1] :
      ( hates(butler,X1)
      | ~ hates(agatha,X1) ) ),
    inference(split_conjunct,[status(thm)],[47])).
