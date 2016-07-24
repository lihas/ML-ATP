fof(58,axiom,(
    ~ hates(agatha,esk2_1(butler)) ),
    inference(spm,[status(thm)],[51,48,theory(equality)]),
    [verified(thm)]).
fof(42,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
      | X1 = butler ) ),
    inference(split_conjunct,[status(thm)],[41]),
    [verified(thm)]).
fof(69,conjecture,(
    butler = esk2_1(butler) ),
    inference(spm,[status(thm)],[58,42,theory(equality)])).
