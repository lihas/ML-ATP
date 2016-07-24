fof(22,axiom,
    ( lives(esk1_0)
    & killed(esk1_0,agatha) ),
    inference(skolemize,[status(esa)],[21])).
fof(21,conjecture,(
    ? [X2] :
      ( lives(X2)
      & killed(X2,agatha) ) ),
    inference(variable_rename,[status(thm)],[1]),
    [verified(thm)]).
