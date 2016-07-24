<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC076-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC076-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC076-1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC076-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC076-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_id_segment_total2_x_run_eq_max2
% Version  : [Wei00] axioms.
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
% Rating   : 0.27 v6.4.0, 0.40 v6.3.0, 0.18 v6.2.0, 0.20 v6.1.0, 0.43 v6.0.0, 0.30 v5.5.0, 0.60 v5.3.0, 0.56 v5.2.0, 0.50 v5.1.0, 0.47 v5.0.0, 0.36 v4.1.0, 0.46 v4.0.1, 0.36 v3.7.0, 0.30 v3.5.0, 0.36 v3.4.0, 0.33 v3.3.0, 0.36 v3.2.0, 0.38 v3.1.0, 0.45 v2.7.0, 0.42 v2.6.0, 0.44 v2.4.0
% Syntax   : Number of clauses     :  200 (  33 non-Horn;  64 unit; 157 RR)
%            Number of atoms       :  632 ( 109 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   55 (   9 constant; 0-2 arity)
%            Number of variables   :  333 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC076+1
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SWC001-0.ax>SWC001-0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="co1_1"></A>cnf(co1_1,negated_conjecture,
    ( ssList(sk1) )).

<A NAME="co1_2"></A>cnf(co1_2,negated_conjecture,
    ( ssList(sk2) )).

<A NAME="co1_3"></A>cnf(co1_3,negated_conjecture,
    ( ssList(sk3) )).

<A NAME="co1_4"></A>cnf(co1_4,negated_conjecture,
    ( ssList(sk4) )).

<A NAME="co1_5"></A>cnf(co1_5,negated_conjecture,
    ( sk2 = sk4 )).

<A NAME="co1_6"></A>cnf(co1_6,negated_conjecture,
    ( sk1 = sk3 )).

<A NAME="co1_7"></A>cnf(co1_7,negated_conjecture,
    ( ~ ssList(A)
    | ~ neq(A,nil)
    | ~ segmentP(sk2,A)
    | ~ segmentP(sk1,A) )).

<A NAME="co1_8"></A>cnf(co1_8,negated_conjecture,
    ( ssList(sk5) )).

<A NAME="co1_9"></A>cnf(co1_9,negated_conjecture,
    ( ssList(sk6) )).

<A NAME="co1_10"></A>cnf(co1_10,negated_conjecture,
    ( app(app(sk5,sk3),sk6) = sk4 )).

<A NAME="co1_11"></A>cnf(co1_11,negated_conjecture,
    ( equalelemsP(sk3) )).

<A NAME="co1_12"></A>cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(B,cons(A,nil)) != sk5
    | ~ ssList(C)
    | app(cons(A,nil),C) != sk3 )).

<A NAME="co1_13"></A>cnf(co1_13,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk6
    | ~ ssList(C)
    | app(C,cons(A,nil)) != sk3 )).

<A NAME="co1_14"></A>cnf(co1_14,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

<A NAME="co1_15"></A>cnf(co1_15,negated_conjecture,
    ( nil != sk2
    | nil != sk1 )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
