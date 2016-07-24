fof(18,axiom,(
    ! [X1] :
      ( ~ richer(X1,agatha)
     => hates(butler,X1) ) ),
    inference(fof_simplification,[status(thm)],[10,theory(equality)]),
    [verified(thm)]).
fof(43,conjecture,(
    ! [X1] :
      ( richer(X1,agatha)
      | hates(butler,X1) ) ),
    inference(fof_nnf,[status(thm)],[18])).
