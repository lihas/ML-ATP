==Whats where in this project==

1. aux-scripts -> solutions is the folder containing solution files which were fetched from online repository of TSTP.
2. *prophet* and other tools, along with some documentation is present in tptp folder
3. avgRel.sh is used to calculate average upon prophet generated clause wise relevance.
4. for i in *; do cd ../problemsSolved/; rm "$i"; done -> copy all problems in problemsSolved and then run this script in problemsTimeOut, it will then remove all unsolved(timeed out problems) theorems from problemsSolved folder.
5. calcRelevanceML.sh calculates relevance for each file in problemsML wrt to each file in problemsSolved and stores it in relevanceMatrix.csv
6. sortRelevanceML.sh is run after above script and it sorts the relevanceMatrix.csv
7. 
