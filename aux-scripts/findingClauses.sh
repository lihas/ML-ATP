#!/bin/bash
echo -n > clauses_used
for i in *.soln; 
do 
clauses=`cat "$i"|grep -o -E "clause[0-9]+"`; 
echo -e "solution : $i\n$clauses" >> clauses_used; 
done