#!/bin/bash
cat clauses_used.csv|awk '{for(i=2;i<=NF;i++){DB[$1][i-2]=$i;}} END{}'
