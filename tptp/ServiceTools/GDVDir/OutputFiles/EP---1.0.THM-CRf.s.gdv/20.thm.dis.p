fof(15,axiom,(
    ~ killed(agatha,agatha) ),
    inference(assume_negation,[status(cth)],[14]),
    [verified(cth)]).
fof(20,conjecture,(
    ~ killed(agatha,agatha) ),
    inference(fof_simplification,[status(thm)],[15,theory(equality)])).
