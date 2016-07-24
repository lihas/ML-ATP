fof(7,axiom,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => ~ richer(X1,X2) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_5)).
fof(16,conjecture,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => ~ richer(X1,X2) ) ),
    inference(fof_simplification,[status(thm)],[7,theory(equality)])).
