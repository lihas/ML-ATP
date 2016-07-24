#!/bin/bash
PATH="$PATH:/home/singh/ML-ATP/E/PROVER/"
cd problems
for i in *
do
echo "$i"
time eprover --auto-schedule --definitional-cnf=24 -R --print-version --tstp-format -s --proof-object --cpu-limit=300 "$i" > "solutions/$i.soln"
done
