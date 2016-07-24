fof(11,axiom,(
    ! [X1] :
      ( hates(agatha,X1)
     => hates(butler,X1) ) ),
    file('/home/graph/tptp/TPTP/Problems/PUZ/PUZ001+1.p',pel55_9)).
fof(46,conjecture,(
    ! [X1] :
      ( ~ hates(agatha,X1)
      | hates(butler,X1) ) ),
    inference(fof_nnf,[status(thm)],[11])).
