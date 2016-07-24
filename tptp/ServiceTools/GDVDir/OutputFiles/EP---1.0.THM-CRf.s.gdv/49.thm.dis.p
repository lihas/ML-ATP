fof(19,axiom,(
    ! [X1] :
    ? [X2] : ~ hates(X1,X2) ),
    inference(fof_simplification,[status(thm)],[12,theory(equality)]),
    [verified(thm)]).
fof(49,conjecture,(
    ! [X3] :
    ? [X4] : ~ hates(X3,X4) ),
    inference(variable_rename,[status(thm)],[19])).
