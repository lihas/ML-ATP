fof(50,axiom,(
    ! [X3] : ~ hates(X3,esk2_1(X3)) ),
    inference(skolemize,[status(esa)],[49])).
fof(49,conjecture,(
    ! [X3] :
    ? [X4] : ~ hates(X3,X4) ),
    inference(variable_rename,[status(thm)],[19]),
    [verified(thm)]).
