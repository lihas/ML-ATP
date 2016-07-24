fof(97,axiom,
    ( esk1_0 = butler
    | esk1_0 = agatha
    | ~ hates(agatha,agatha) ),
    inference(spm,[status(thm)],[39,64,theory(equality)]),
    [verified(thm)]).
fof(42,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
      | X1 = butler ) ),
    inference(split_conjunct,[status(thm)],[41]),
    [verified(thm)]).
fof(104,conjecture,
    ( esk1_0 = agatha
    | esk1_0 = butler
    | butler = agatha ),
    inference(spm,[status(thm)],[97,42,theory(equality)])).
