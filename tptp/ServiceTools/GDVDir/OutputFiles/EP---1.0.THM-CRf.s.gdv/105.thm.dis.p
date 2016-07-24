fof(104,axiom,
    ( esk1_0 = agatha
    | esk1_0 = butler
    | butler = agatha ),
    inference(spm,[status(thm)],[97,42,theory(equality)]),
    [verified(thm)]).
fof(52,axiom,(
    agatha != butler ),
    inference(split_conjunct,[status(thm)],[13]),
    [verified(thm)]).
fof(105,conjecture,
    ( esk1_0 = agatha
    | esk1_0 = butler ),
    inference(sr,[status(thm)],[104,52,theory(equality)])).
