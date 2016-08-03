#!/usr/bin/python
import csv, sys
import re
import os
from subprocess import call
#config
axiomfile="problemsTimeOut/Axioms/SWC001-0-original.ax"
relMatSor="relevanceMatrixSortedTimeOut.csv"
clausesUsed="problems/solutions/clauses_used.csv"

#global variables
clauses=[]
relevanceMatrix={}
clauseMapping={}

def generateAxiomDB():
	"""
	load all axioms from axiom file into clauses list.
	"""
	global clauses
	content=""
	
	re_axiom=re.compile(r"^cnf\(.*",re.DOTALL+re.MULTILINE+re.VERBOSE)	
		
	with open(axiomfile) as af:
		content=af.read()
	#print re.search("^cnf\(.*?\)\.",content,re.MULTILINE+re.DOTALL).group()
	clauses=re.findall("^cnf\(.*?\)\.",content,re.MULTILINE+re.DOTALL)
	#for m in ls:
	#	print m
	#	print "#########\n"
	print "axiom-DB generated"


def generateRelevanceDB():
	"""
	for each clause store names of relevant clauses(thresholded earlier) into database
	"""
	global relevanceMatrix
	fl=csv.reader(open(relMatSor),delimiter=",",quotechar="'")
	for m in fl:
		#print m[1]
		if m[0] in  relevanceMatrix:
			relevanceMatrix[m[0]].extend([m[1]])
		else:
			relevanceMatrix[m[0]]=[m[1]]
	print "relevance-DB generated"


def generateClauseMappingDB():	
	global clauseMapping
	fl=csv.reader(open(clausesUsed),delimiter="\t",quotechar="'")
	for row in fl:
		#print len(row)," ", row
		for col in range(len(row)):
			if col==0:
				clauseMapping[row[0]]=[]
			else:
				x=row[col]
				#print x
				if x != "":
					clauseMapping[row[0]]+=[x]
					#print clauseMapping[row[0]]

	print "clausemapping-DB generated\n"

generateAxiomDB()
generateRelevanceDB()
generateClauseMappingDB()

#print clauseMapping["SWC390-1.p.soln"]

for problem in relevanceMatrix:
	print problem
	#print relevanceMatrix[problem]
	#problem_key=problem+".soln"
	ax_ls=[] #l=total list of axioms from all relevant problems
	solved=relevanceMatrix[problem]
	#print solved
	for pb in solved:
		ax_ls.extend(clauseMapping[pb+".soln"])
	#print ax_ls
	ax_ls_uniq=list(set(ax_ls))
	f=open("problemsTimeOut/Axioms/SWC001-0.ax","w")
	f1=open("problemsTimeOut/Axioms/"+problem+".ax","w")
	#print ax_ls_uniq
	for axiom in ax_ls_uniq:
		axiom_index=int(axiom[6:]) #remove string clause from starting
		f.write(clauses[axiom_index]+"\n\n") 
		f1.write(clauses[axiom_index]+"\n\n")
	f.close()
	print "entering e-prover"
	call ([ "../E/PROVER/eprover", "--auto-schedule", "--definitional-cnf=24", "-R", "--print-version", "--tstp-format", "-s", "--proof-object", "--cpu-limit=300", "problemsTimeOut/"+problem ],stdout=file("solutionsTimeOut/"+problem+".soln","w"))
	print "exiting e-prover"

