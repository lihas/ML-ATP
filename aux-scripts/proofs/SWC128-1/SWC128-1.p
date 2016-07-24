<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC128-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC128-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC128-1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC128-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC128-1 : TPTP v6.4.0. Bugfixed v3.0.0.
% Domain   : Software Creation
% Problem  : cond_pr_works_always_x_filter_segment
% Version  : [Wei00] axioms : Biased.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v6.2.0, 0.10 v6.1.0, 0.14 v6.0.0, 0.10 v5.5.0, 0.25 v5.4.0, 0.30 v5.3.0, 0.22 v5.2.0, 0.25 v5.1.0, 0.29 v4.1.0, 0.15 v4.0.1, 0.09 v4.0.0, 0.18 v3.7.0, 0.20 v3.5.0, 0.18 v3.4.0, 0.33 v3.3.0, 0.29 v3.2.0, 0.46 v3.1.0
% Syntax   : Number of clauses     :  186 (  33 non-Horn;  55 unit; 143 RR)
%            Number of atoms       :  605 (  98 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   21 (   1 propositional; 0-2 arity)
%            Number of functors    :   49 (   3 constant; 0-2 arity)
%            Number of variables   :  326 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC128+1
%          : Biased because it has $true which some systems don't understand
%            yet.
% Bugfixes : v3.0.0 - Fixed the conjecture
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SWC001-0.ax>SWC001-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="co1_1"></A>cnf(co1_1,negated_conjecture,
    ( $false )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
