fof(57,axiom,(
    ! [X1] :
      ( hates(butler,X1)
      | ~ killed(X1,agatha) ) ),
    inference(spm,[status(thm)],[36,45,theory(equality)]),
    [verified(thm)]).
fof(23,axiom,(
    killed(esk1_0,agatha) ),
    inference(split_conjunct,[status(thm)],[22]),
    [verified(thm)]).
fof(67,conjecture,(
    hates(butler,esk1_0) ),
    inference(spm,[status(thm)],[57,23,theory(equality)])).
