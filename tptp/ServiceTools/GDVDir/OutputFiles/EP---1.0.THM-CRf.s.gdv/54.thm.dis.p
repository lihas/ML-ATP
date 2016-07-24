fof(30,axiom,(
    ! [X1] :
      ( X1 = charles
      | X1 = butler
      | X1 = agatha
      | ~ lives(X1) ) ),
    inference(split_conjunct,[status(thm)],[29]),
    [verified(thm)]).
fof(24,axiom,(
    lives(esk1_0) ),
    inference(split_conjunct,[status(thm)],[22]),
    [verified(thm)]).
fof(54,conjecture,
    ( charles = esk1_0
    | butler = esk1_0
    | agatha = esk1_0 ),
    inference(spm,[status(thm)],[30,24,theory(equality)])).
