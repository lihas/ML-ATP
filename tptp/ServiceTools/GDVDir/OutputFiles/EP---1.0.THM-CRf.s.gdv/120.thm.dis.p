fof(23,axiom,(
    killed(esk1_0,agatha) ),
    inference(split_conjunct,[status(thm)],[22]),
    [verified(thm)]).
fof(114,axiom,(
    esk1_0 = agatha ),
    inference(sr,[status(thm)],[110,70,theory(equality)]),
    [verified(thm)]).
fof(120,conjecture,(
    killed(agatha,agatha) ),
    inference(rw,[status(thm)],[23,114,theory(equality)])).
