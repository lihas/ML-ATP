fof(10,axiom,(
    ! [X1] :
      ( ~ richer(X1,agatha)
     => hates(butler,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_8)).
fof(18,conjecture,(
    ! [X1] :
      ( ~ richer(X1,agatha)
     => hates(butler,X1) ) ),
    inference(fof_simplification,[status(thm)],[10,theory(equality)])).
