fof(5,axiom,(
    ! [X1] :
      ( lives(X1)
     => ( X1 = agatha
        | X1 = butler
        | X1 = charles ) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_3)).
fof(28,conjecture,(
    ! [X1] :
      ( ~ lives(X1)
      | X1 = agatha
      | X1 = butler
      | X1 = charles ) ),
    inference(fof_nnf,[status(thm)],[5])).
