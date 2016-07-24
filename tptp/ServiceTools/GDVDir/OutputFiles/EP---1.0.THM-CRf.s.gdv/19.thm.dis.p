fof(12,axiom,(
    ! [X1] :
    ? [X2] : ~ hates(X1,X2) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_10)).
fof(19,conjecture,(
    ! [X1] :
    ? [X2] : ~ hates(X1,X2) ),
    inference(fof_simplification,[status(thm)],[12,theory(equality)])).
