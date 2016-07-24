#!/bin/bash
mkdir "solutions"
cd "solutions"
for i in `lynx -dump -listonly 'http://www.cs.miami.edu/~tptp/cgi-bin/SeeTPTP?Category=Solutions&Domain=SWC'|tail -n +4|tr -s " "|cut -f 3 -d " "`;
do
dir=$(echo "$i"|grep -o 'File=.*'|cut -f 2 -d "=");
echo "#status: $dir#"
elinks -dump -force-html -no-references $(lynx -dump -listonly "$i"|grep E---1.9.1|tr -s " "|cut -f 3 -d " ") > "$dir"
done
