fof(9,axiom,(
    ! [X1] :
      ( X1 != butler
     => hates(agatha,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_7)).
fof(40,conjecture,(
    ! [X1] :
      ( X1 = butler
      | hates(agatha,X1) ) ),
    inference(fof_nnf,[status(thm)],[9])).
