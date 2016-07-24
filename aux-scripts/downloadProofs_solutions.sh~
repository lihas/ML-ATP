#!/bin/bash
mkdir "proofs"
cd "proofs"
for i in `lynx -dump -listonly 'http://www.cs.miami.edu/~tptp/cgi-bin/SeeTPTP?Category=Solutions&Domain=SWC'|tail -n +4|tr -s " "|cut -f 3 -d " "`;
do
dir=$(echo "$i"|grep -o 'File=.*'|cut -f 2 -d "=");
mkdir "$dir";
cd "$dir";
wget $(lynx -dump -listonly "$i"|grep E---1.9.1|tr -s " "|cut -f 3 -d " ") -q -O E---1.9.1
cd ..
done
