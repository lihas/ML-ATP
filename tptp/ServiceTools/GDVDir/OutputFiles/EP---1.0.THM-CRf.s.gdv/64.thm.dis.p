fof(55,axiom,(
    hates(esk1_0,agatha) ),
    inference(spm,[status(thm)],[33,23,theory(equality)]),
    [verified(thm)]).
fof(54,axiom,
    ( charles = esk1_0
    | butler = esk1_0
    | agatha = esk1_0 ),
    inference(spm,[status(thm)],[30,24,theory(equality)]),
    [verified(thm)]).
fof(64,conjecture,
    ( hates(charles,agatha)
    | esk1_0 = agatha
    | esk1_0 = butler ),
    inference(spm,[status(thm)],[55,54,theory(equality)])).
