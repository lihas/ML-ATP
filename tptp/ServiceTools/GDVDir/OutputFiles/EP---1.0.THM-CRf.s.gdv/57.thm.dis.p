fof(36,axiom,(
    ! [X2,X1] :
      ( ~ richer(X1,X2)
      | ~ killed(X1,X2) ) ),
    inference(split_conjunct,[status(thm)],[35]),
    [verified(thm)]).
fof(45,axiom,(
    ! [X1] :
      ( hates(butler,X1)
      | richer(X1,agatha) ) ),
    inference(split_conjunct,[status(thm)],[44]),
    [verified(thm)]).
fof(57,conjecture,(
    ! [X1] :
      ( hates(butler,X1)
      | ~ killed(X1,agatha) ) ),
    inference(spm,[status(thm)],[36,45,theory(equality)])).
