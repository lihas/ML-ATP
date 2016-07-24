#!/bin/bash
PATH="$PATH:/home/singh/ML-ATP/E/PROVER/:/home/vishwajit/surykant/nb/ML-ATP/E/PROVER"
cd problems
for i in *
do
echo "$i"
command time -f "$i %E" -a -o "time_log.txt" eprover --auto-schedule --definitional-cnf=24 -R --print-version --tstp-format -s --proof-object --cpu-limit=300 "$i" > "solutions/$i.soln"
done
