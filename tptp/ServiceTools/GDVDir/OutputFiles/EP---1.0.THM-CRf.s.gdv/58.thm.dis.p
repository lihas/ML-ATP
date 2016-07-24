fof(51,axiom,(
    ! [X1] : ~ hates(X1,esk2_1(X1)) ),
    inference(split_conjunct,[status(thm)],[50]),
    [verified(thm)]).
fof(48,axiom,(
    ! [X1] :
      ( hates(butler,X1)
      | ~ hates(agatha,X1) ) ),
    inference(split_conjunct,[status(thm)],[47]),
    [verified(thm)]).
fof(58,conjecture,(
    ~ hates(agatha,esk2_1(butler)) ),
    inference(spm,[status(thm)],[51,48,theory(equality)])).
