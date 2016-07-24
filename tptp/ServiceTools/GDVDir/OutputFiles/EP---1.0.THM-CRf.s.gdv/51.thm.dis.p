fof(50,axiom,(
    ! [X3] : ~ hates(X3,esk2_1(X3)) ),
    inference(skolemize,[status(esa)],[49]),
    [verified(esa)]).
fof(51,conjecture,(
    ! [X1] : ~ hates(X1,esk2_1(X1)) ),
    inference(split_conjunct,[status(thm)],[50])).
