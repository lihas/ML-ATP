<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC413-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC413-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC413-1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC413-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC413-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_swap_tos_x_swap_tos
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
% Rating   : 0.27 v6.2.0, 0.30 v6.1.0, 0.50 v5.5.0, 0.75 v5.3.0, 0.78 v5.2.0, 0.69 v5.1.0, 0.76 v5.0.0, 0.71 v4.1.0, 0.69 v4.0.1, 0.64 v3.7.0, 0.60 v3.5.0, 0.64 v3.4.0, 0.75 v3.3.0, 0.71 v3.2.0, 0.77 v3.1.0, 0.82 v2.7.0, 0.83 v2.6.0, 0.89 v2.5.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  241 (  69 non-Horn;  60 unit; 198 RR)
%            Number of atoms       :  760 ( 145 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   62 (  16 constant; 0-2 arity)
%            Number of variables   :  371 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC413+1
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
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk2
    | app(app(cons(B,nil),cons(A,nil)),C) != sk1
    | ~ ssItem(D)
    | ~ ssItem(E)
    | ~ ssList(F)
    | app(app(cons(D,nil),cons(E,nil)),F) != sk4 )).

<A NAME="co1_8"></A>cnf(co1_8,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk2
    | app(app(cons(B,nil),cons(A,nil)),C) != sk1
    | ssItem(sk11) )).

<A NAME="co1_9"></A>cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk2
    | app(app(cons(B,nil),cons(A,nil)),C) != sk1
    | ssItem(sk12) )).

<A NAME="co1_10"></A>cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk2
    | app(app(cons(B,nil),cons(A,nil)),C) != sk1
    | ssList(sk13) )).

<A NAME="co1_11"></A>cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk2
    | app(app(cons(B,nil),cons(A,nil)),C) != sk1
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_12"></A>cnf(co1_12,negated_conjecture,
    ( ssItem(sk5)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_13"></A>cnf(co1_13,negated_conjecture,
    ( ssItem(sk6)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_14"></A>cnf(co1_14,negated_conjecture,
    ( ssList(sk7)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_15"></A>cnf(co1_15,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_16"></A>cnf(co1_16,negated_conjecture,
    ( ssItem(sk8)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_17"></A>cnf(co1_17,negated_conjecture,
    ( ssItem(sk9)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_18"></A>cnf(co1_18,negated_conjecture,
    ( ssList(sk10)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_19"></A>cnf(co1_19,negated_conjecture,
    ( app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk4
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_20"></A>cnf(co1_20,negated_conjecture,
    ( app(app(cons(sk9,nil),cons(sk8,nil)),sk10) = sk3
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4 )).

<A NAME="co1_21"></A>cnf(co1_21,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk11) )).

<A NAME="co1_22"></A>cnf(co1_22,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk11) )).

<A NAME="co1_23"></A>cnf(co1_23,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk11) )).

<A NAME="co1_24"></A>cnf(co1_24,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk11) )).

<A NAME="co1_25"></A>cnf(co1_25,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk12) )).

<A NAME="co1_26"></A>cnf(co1_26,negated_conjecture,
    ( ssItem(sk5)
    | ssList(sk13) )).

<A NAME="co1_27"></A>cnf(co1_27,negated_conjecture,
    ( ssItem(sk5)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_28"></A>cnf(co1_28,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk12) )).

<A NAME="co1_29"></A>cnf(co1_29,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk12) )).

<A NAME="co1_30"></A>cnf(co1_30,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk12) )).

<A NAME="co1_31"></A>cnf(co1_31,negated_conjecture,
    ( ssItem(sk6)
    | ssList(sk13) )).

<A NAME="co1_32"></A>cnf(co1_32,negated_conjecture,
    ( ssItem(sk6)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_33"></A>cnf(co1_33,negated_conjecture,
    ( ssList(sk7)
    | ssList(sk13) )).

<A NAME="co1_34"></A>cnf(co1_34,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssList(sk13) )).

<A NAME="co1_35"></A>cnf(co1_35,negated_conjecture,
    ( ssList(sk7)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_36"></A>cnf(co1_36,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_37"></A>cnf(co1_37,negated_conjecture,
    ( ssItem(sk8)
    | ssItem(sk11) )).

<A NAME="co1_38"></A>cnf(co1_38,negated_conjecture,
    ( ssItem(sk9)
    | ssItem(sk11) )).

<A NAME="co1_39"></A>cnf(co1_39,negated_conjecture,
    ( ssList(sk10)
    | ssItem(sk11) )).

<A NAME="co1_40"></A>cnf(co1_40,negated_conjecture,
    ( app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk4
    | ssItem(sk11) )).

<A NAME="co1_41"></A>cnf(co1_41,negated_conjecture,
    ( app(app(cons(sk9,nil),cons(sk8,nil)),sk10) = sk3
    | ssItem(sk11) )).

<A NAME="co1_42"></A>cnf(co1_42,negated_conjecture,
    ( ssItem(sk8)
    | ssItem(sk12) )).

<A NAME="co1_43"></A>cnf(co1_43,negated_conjecture,
    ( ssItem(sk8)
    | ssList(sk13) )).

<A NAME="co1_44"></A>cnf(co1_44,negated_conjecture,
    ( ssItem(sk8)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_45"></A>cnf(co1_45,negated_conjecture,
    ( ssItem(sk9)
    | ssItem(sk12) )).

<A NAME="co1_46"></A>cnf(co1_46,negated_conjecture,
    ( ssList(sk10)
    | ssItem(sk12) )).

<A NAME="co1_47"></A>cnf(co1_47,negated_conjecture,
    ( app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk4
    | ssItem(sk12) )).

<A NAME="co1_48"></A>cnf(co1_48,negated_conjecture,
    ( app(app(cons(sk9,nil),cons(sk8,nil)),sk10) = sk3
    | ssItem(sk12) )).

<A NAME="co1_49"></A>cnf(co1_49,negated_conjecture,
    ( ssItem(sk9)
    | ssList(sk13) )).

<A NAME="co1_50"></A>cnf(co1_50,negated_conjecture,
    ( ssItem(sk9)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_51"></A>cnf(co1_51,negated_conjecture,
    ( ssList(sk10)
    | ssList(sk13) )).

<A NAME="co1_52"></A>cnf(co1_52,negated_conjecture,
    ( app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk4
    | ssList(sk13) )).

<A NAME="co1_53"></A>cnf(co1_53,negated_conjecture,
    ( app(app(cons(sk9,nil),cons(sk8,nil)),sk10) = sk3
    | ssList(sk13) )).

<A NAME="co1_54"></A>cnf(co1_54,negated_conjecture,
    ( ssList(sk10)
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_55"></A>cnf(co1_55,negated_conjecture,
    ( app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk4
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

<A NAME="co1_56"></A>cnf(co1_56,negated_conjecture,
    ( app(app(cons(sk9,nil),cons(sk8,nil)),sk10) = sk3
    | app(app(cons(sk11,nil),cons(sk12,nil)),sk13) = sk2 )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
