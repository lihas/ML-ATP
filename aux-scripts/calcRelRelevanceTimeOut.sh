#!/bin/bash
filename="relevanceMatrixTimeOut.csv"
echo -n > $filename

for i in problemsTimeOut/*.p; 
do
echo "$i" 
for j in problemsSolved/*; 
do
bn_i=`basename $i`
bn_j=`basename $j`
echo -e -n "$bn_i,$bn_j," >> $filename
  
if [[ "$i" == "$j" ]]; 
then continue; 
fi 
cat <(cat "$j"|sed 's/negated_conjecture/axiom/') "$i"  | ../tptp/ServiceTools/prophet -p -- | awk 'NR==1,/.*negated_conjecture.*/'  |grep -o -E "relevance\([0-9]*.[0-9]*\)"|tr "(" " "|tr -d ")"|awk '{sum+=$2;} END{print sum/NR;}' >> $filename
#echo "" >> $filename
done
done

