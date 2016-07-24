fof(43,axiom,(
    ! [X1] :
      ( richer(X1,agatha)
      | hates(butler,X1) ) ),
    inference(fof_nnf,[status(thm)],[18]),
    [verified(thm)]).
fof(44,conjecture,(
    ! [X2] :
      ( richer(X2,agatha)
      | hates(butler,X2) ) ),
    inference(variable_rename,[status(thm)],[43])).
