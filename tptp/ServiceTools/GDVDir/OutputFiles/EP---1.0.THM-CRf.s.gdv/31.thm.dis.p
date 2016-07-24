fof(6,axiom,(
    ! [X1,X2] :
      ( killed(X1,X2)
     => hates(X1,X2) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_4)).
fof(31,conjecture,(
    ! [X1,X2] :
      ( ~ killed(X1,X2)
      | hates(X1,X2) ) ),
    inference(fof_nnf,[status(thm)],[6])).
