<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC344-1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC344-1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC344-1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC344-1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC344-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_max2_x_run_strict_ord_max2
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
% Rating   : 0.60 v6.3.0, 0.64 v6.2.0, 0.70 v6.1.0, 0.79 v6.0.0, 0.90 v5.5.0, 0.95 v5.3.0, 1.00 v5.2.0, 0.94 v5.0.0, 0.93 v4.1.0, 0.92 v4.0.1, 0.91 v3.7.0, 0.90 v3.5.0, 0.91 v3.4.0, 0.92 v3.3.0, 0.93 v3.2.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  296 ( 131 non-Horn;  64 unit; 253 RR)
%            Number of atoms       : 1316 ( 359 equality)
%            Maximal clause size   :   10 (   4 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   63 (   9 constant; 0-2 arity)
%            Number of variables   :  530 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC344+1
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
    ( ssList(sk6) )).

<A NAME="co1_9"></A>cnf(co1_9,negated_conjecture,
    ( app(app(sk5,sk3),sk6) = sk4 )).

<A NAME="co1_10"></A>cnf(co1_10,negated_conjecture,
    ( strictorderedP(sk3) )).

<A NAME="co1_11"></A>cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(B,cons(A,nil)) != sk5
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(cons(C,nil),D) != sk3
    | ~ lt(A,C) )).

<A NAME="co1_12"></A>cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk6
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(D,cons(C,nil)) != sk3
    | ~ lt(C,A) )).

<A NAME="co1_13"></A>cnf(co1_13,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

<A NAME="co1_14"></A>cnf(co1_14,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_15"></A>cnf(co1_15,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_16"></A>cnf(co1_16,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_17"></A>cnf(co1_17,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_18"></A>cnf(co1_18,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_19"></A>cnf(co1_19,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_20"></A>cnf(co1_20,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_21"></A>cnf(co1_21,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_22"></A>cnf(co1_22,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_23"></A>cnf(co1_23,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_24"></A>cnf(co1_24,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_25"></A>cnf(co1_25,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_26"></A>cnf(co1_26,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_27"></A>cnf(co1_27,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_28"></A>cnf(co1_28,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_29"></A>cnf(co1_29,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_30"></A>cnf(co1_30,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_31"></A>cnf(co1_31,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_32"></A>cnf(co1_32,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_33"></A>cnf(co1_33,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_34"></A>cnf(co1_34,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_35"></A>cnf(co1_35,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_36"></A>cnf(co1_36,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_37"></A>cnf(co1_37,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_38"></A>cnf(co1_38,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_39"></A>cnf(co1_39,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_40"></A>cnf(co1_40,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_41"></A>cnf(co1_41,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_42"></A>cnf(co1_42,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_43"></A>cnf(co1_43,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_44"></A>cnf(co1_44,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_45"></A>cnf(co1_45,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_46"></A>cnf(co1_46,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_47"></A>cnf(co1_47,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_48"></A>cnf(co1_48,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_49"></A>cnf(co1_49,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_50"></A>cnf(co1_50,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_51"></A>cnf(co1_51,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_52"></A>cnf(co1_52,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_53"></A>cnf(co1_53,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_54"></A>cnf(co1_54,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_55"></A>cnf(co1_55,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_56"></A>cnf(co1_56,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_57"></A>cnf(co1_57,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_58"></A>cnf(co1_58,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_59"></A>cnf(co1_59,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_60"></A>cnf(co1_60,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_61"></A>cnf(co1_61,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_62"></A>cnf(co1_62,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_63"></A>cnf(co1_63,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

<A NAME="co1_64"></A>cnf(co1_64,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_65"></A>cnf(co1_65,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_66"></A>cnf(co1_66,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_67"></A>cnf(co1_67,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_68"></A>cnf(co1_68,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_69"></A>cnf(co1_69,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_70"></A>cnf(co1_70,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_71"></A>cnf(co1_71,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_72"></A>cnf(co1_72,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_73"></A>cnf(co1_73,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_74"></A>cnf(co1_74,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_75"></A>cnf(co1_75,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_76"></A>cnf(co1_76,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_77"></A>cnf(co1_77,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_78"></A>cnf(co1_78,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_79"></A>cnf(co1_79,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_80"></A>cnf(co1_80,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_81"></A>cnf(co1_81,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_82"></A>cnf(co1_82,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_83"></A>cnf(co1_83,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_84"></A>cnf(co1_84,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_85"></A>cnf(co1_85,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_86"></A>cnf(co1_86,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_87"></A>cnf(co1_87,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_88"></A>cnf(co1_88,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_89"></A>cnf(co1_89,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_90"></A>cnf(co1_90,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_91"></A>cnf(co1_91,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_92"></A>cnf(co1_92,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_93"></A>cnf(co1_93,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_94"></A>cnf(co1_94,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_95"></A>cnf(co1_95,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_96"></A>cnf(co1_96,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_97"></A>cnf(co1_97,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_98"></A>cnf(co1_98,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_99"></A>cnf(co1_99,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_100"></A>cnf(co1_100,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_101"></A>cnf(co1_101,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_102"></A>cnf(co1_102,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_103"></A>cnf(co1_103,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_104"></A>cnf(co1_104,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_105"></A>cnf(co1_105,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_106"></A>cnf(co1_106,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_107"></A>cnf(co1_107,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_108"></A>cnf(co1_108,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_109"></A>cnf(co1_109,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_110"></A>cnf(co1_110,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

<A NAME="co1_111"></A>cnf(co1_111,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
