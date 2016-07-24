fof(33,axiom,(
    ! [X2,X1] :
      ( hates(X1,X2)
      | ~ killed(X1,X2) ) ),
    inference(split_conjunct,[status(thm)],[32]),
    [verified(thm)]).
fof(23,axiom,(
    killed(esk1_0,agatha) ),
    inference(split_conjunct,[status(thm)],[22]),
    [verified(thm)]).
fof(55,conjecture,(
    hates(esk1_0,agatha) ),
    inference(spm,[status(thm)],[33,23,theory(equality)])).
