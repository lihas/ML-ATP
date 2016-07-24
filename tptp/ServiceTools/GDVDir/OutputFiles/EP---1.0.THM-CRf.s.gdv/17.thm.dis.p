fof(8,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
     => ~ hates(charles,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_6)).
fof(17,conjecture,(
    ! [X1] :
      ( hates(agatha,X1)
     => ~ hates(charles,X1) ) ),
    inference(fof_simplification,[status(thm)],[8,theory(equality)])).
