fof(2,axiom,(
    ! [X1_0,X1_1,X1_2] :
      ( X1_0 = sum(X1_1,X1_2)
    <=> ! [X1_3] :
          ( incident_c(X1_3,X1_0)
        <=> ( incident_c(X1_3,X1_1)
            | incident_c(X1_3,X1_2) ) ) ) ),
    file(dummy_file_name,some_unmodified_input)).

fof(3,plain,(
    ! [X1_0,X1_1,X1_2] :
      ( X1_0 = sum(X1_1,X1_2)
    <=> ! [X1_3] :
          ( incident_c(X1_3,X1_0)
        <=> ( incident_c(X1_3,X1_1)
            | incident_c(X1_3,X1_2) ) ) ) ),
    inference(Cp,[status(thm)],[2])).

