fof(120,axiom,(
    killed(agatha,agatha) ),
    inference(rw,[status(thm)],[23,114,theory(equality)]),
    [verified(thm)]).
fof(53,axiom,(
    ~ killed(agatha,agatha) ),
    inference(split_conjunct,[status(thm)],[20]),
    [verified(thm)]).
fof(121,conjecture,(
    $false ),
    inference(sr,[status(thm)],[120,53,theory(equality)])).
