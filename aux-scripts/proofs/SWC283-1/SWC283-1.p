<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC283-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC283-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC283-1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC283-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC283-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_sorted2_x_run_strict_ord_front2
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

% Status   : Unknown
% Rating   : 1.00 v2.4.0
% Syntax   : Number of clauses     :  205 (  34 non-Horn;  68 unit; 162 RR)
%            Number of atoms       :  635 ( 106 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   58 (  12 constant; 0-2 arity)
%            Number of variables   :  330 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC283+1
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
    ( ssList(sk5) )).

<A NAME="co1_8"></A>cnf(co1_8,negated_conjecture,
    ( app(sk3,sk5) = sk4 )).

<A NAME="co1_9"></A>cnf(co1_9,negated_conjecture,
    ( strictorderedP(sk3) )).

<A NAME="co1_10"></A>cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk5
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(D,cons(C,nil)) != sk3
    | ~ lt(C,A) )).

<A NAME="co1_11"></A>cnf(co1_11,negated_conjecture,
    ( ssItem(sk6) )).

<A NAME="co1_12"></A>cnf(co1_12,negated_conjecture,
    ( ssList(sk7) )).

<A NAME="co1_13"></A>cnf(co1_13,negated_conjecture,
    ( ssList(sk8) )).

<A NAME="co1_14"></A>cnf(co1_14,negated_conjecture,
    ( app(app(sk7,cons(sk6,nil)),sk8) = sk1 )).

<A NAME="co1_15"></A>cnf(co1_15,negated_conjecture,
    ( ssItem(sk9) )).

<A NAME="co1_16"></A>cnf(co1_16,negated_conjecture,
    ( memberP(sk7,sk9)
    | memberP(sk8,sk9) )).

<A NAME="co1_17"></A>cnf(co1_17,negated_conjecture,
    ( memberP(sk7,sk9)
    | ~ leq(sk6,sk9) )).

<A NAME="co1_18"></A>cnf(co1_18,negated_conjecture,
    ( ~ leq(sk9,sk6)
    | memberP(sk8,sk9) )).

<A NAME="co1_19"></A>cnf(co1_19,negated_conjecture,
    ( ~ leq(sk9,sk6)
    | ~ leq(sk6,sk9) )).

<A NAME="co1_20"></A>cnf(co1_20,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
