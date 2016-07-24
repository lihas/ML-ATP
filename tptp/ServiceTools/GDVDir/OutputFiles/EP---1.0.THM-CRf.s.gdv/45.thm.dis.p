fof(44,axiom,(
    ! [X2] :
      ( richer(X2,agatha)
      | hates(butler,X2) ) ),
    inference(variable_rename,[status(thm)],[43]),
    [verified(thm)]).
fof(45,conjecture,(
    ! [X1] :
      ( hates(butler,X1)
      | richer(X1,agatha) ) ),
    inference(split_conjunct,[status(thm)],[44])).
