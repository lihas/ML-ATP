fof(39,axiom,(
    ! [X1] :
      ( ~ hates(charles,X1)
      | ~ hates(agatha,X1) ) ),
    inference(split_conjunct,[status(thm)],[38]),
    [verified(thm)]).
fof(64,axiom,
    ( hates(charles,agatha)
    | esk1_0 = agatha
    | esk1_0 = butler ),
    inference(spm,[status(thm)],[55,54,theory(equality)]),
    [verified(thm)]).
fof(97,conjecture,
    ( esk1_0 = butler
    | esk1_0 = agatha
    | ~ hates(agatha,agatha) ),
    inference(spm,[status(thm)],[39,64,theory(equality)])).
