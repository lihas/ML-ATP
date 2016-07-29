#!/usr/bin/python
#sorting
import csv, numpy as np
filename="relevanceMatrix.csv"
filename2="relevanceMatrixSorted.csv"
f=csv.reader(open(filename),delimiter=",",quotechar="'")
M={}
for i in f:
	if i[0] in M:
		M[i[0]]=(M[i[0]])+((i[1],float(i[2])),)
	else:
		M[i[0]]=((i[1],float(i[2])),)


for key in M:
	tem=sorted(M[key],key=lambda x:-x[1])
	M[key]=tem

f2=csv.writer(open(filename2,"w"),delimiter=",",quotechar="'")

for i in M:
	temp=map(lambda x:x[1],M[i])
	threshold = np.median(temp) - 0.1
	counterless=0 
	countermore=0
	for j in M[i]:
		if (j[1]>=threshold):
			countermore += 1
			f2.writerow([i,j[0],j[1]])
		else:
			counterless += 1
	print threshold , " " , countermore , " " , counterless
	
