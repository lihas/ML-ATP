#!/bin/bash
echo -n > clauses_used.csv
for i in *.soln; 
do 
clauses=`cat "$i"|grep -o -E "clause[0-9]+"`;
clauses2=`echo -n -e "$clauses"|tr "\n" "\t"` 
echo -e "$i\t$clauses2" >> clauses_used.csv; 
done
