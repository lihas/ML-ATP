fof(51,axiom,(
    ! [X1] : ~ hates(X1,esk2_1(X1)) ),
    inference(split_conjunct,[status(thm)],[50]),
    [verified(thm)]).
fof(69,axiom,(
    butler = esk2_1(butler) ),
    inference(spm,[status(thm)],[58,42,theory(equality)]),
    [verified(thm)]).
fof(70,conjecture,(
    ~ hates(butler,butler) ),
    inference(spm,[status(thm)],[51,69,theory(equality)])).
