fof(13,axiom,(
    agatha != butler ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_11)).
fof(12,axiom,(
    ! [X1] :
    ? [X2] : ~ hates(X1,X2) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_10)).
fof(11,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
     => hates(butler,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_9)).
fof(10,axiom,(
    ! [X1] :
      ( ~ richer(X1,agatha)
     => hates(butler,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_8)).
fof(9,axiom,(
    ! [X1] :
      ( X1 != butler
     => hates(agatha,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_7)).
fof(8,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
     => ~ hates(charles,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_6)).
fof(7,axiom,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => ~ richer(X1,X2) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_5)).
fof(6,axiom,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => hates(X1,X2) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_4)).
fof(5,axiom,(
    ! [X1] :
      ( lives(X1)
     => ( X1 = agatha
        | X1 = butler
        | X1 = charles ) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_3)).
fof(1,axiom,(
    ? [X1] :
      ( lives(X1)
      & killed(X1,agatha) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_1)).
