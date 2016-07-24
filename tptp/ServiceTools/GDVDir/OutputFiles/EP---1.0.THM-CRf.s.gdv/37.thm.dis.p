fof(17,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
     => ~ hates(charles,X1) ) ),
    inference(fof_simplification,[status(thm)],[8,theory(equality)]),
    [verified(thm)]).
fof(37,conjecture,(
    ! [X1] :
      ( ~ hates(agatha,X1)
      | ~ hates(charles,X1) ) ),
    inference(fof_nnf,[status(thm)],[17])).
