%--------------------------------------------------------------------------
% File     : SWC343-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_front2_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.53 v6.3.0, 0.36 v6.2.0, 0.60 v6.1.0, 0.71 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.81 v5.1.0, 0.82 v5.0.0, 0.79 v4.1.0, 0.77 v4.0.1, 0.73 v3.7.0, 0.60 v3.5.0, 0.73 v3.4.0, 0.75 v3.3.0, 0.79 v3.2.0, 0.92 v3.1.0, 0.82 v2.7.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  210 (  40 non-Horn;  63 unit; 167 RR)
%            Number of atoms       :  692 ( 137 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   58 (   8 constant; 0-2 arity)
%            Number of variables   :  344 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC343+1
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/SWC001-0.ax').
%--------------------------------------------------------------------------
cnf(co1_1,negated_conjecture,
    ( ssList(sk1) )).

cnf(co1_2,negated_conjecture,
    ( ssList(sk2) )).

cnf(co1_3,negated_conjecture,
    ( ssList(sk3) )).

cnf(co1_4,negated_conjecture,
    ( ssList(sk4) )).

cnf(co1_5,negated_conjecture,
    ( sk2 = sk4 )).

cnf(co1_6,negated_conjecture,
    ( sk1 = sk3 )).

cnf(co1_7,negated_conjecture,
    ( ssList(sk5) )).

cnf(co1_8,negated_conjecture,
    ( app(sk3,sk5) = sk4 )).

cnf(co1_9,negated_conjecture,
    ( strictorderedP(sk3) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk5
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(D,cons(C,nil)) != sk3
    | ~ lt(C,A) )).

cnf(co1_11,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

cnf(co1_12,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssItem(sk6(A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_13,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssItem(sk6(A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_14,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssList(sk7(A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_15,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | app(cons(sk6(A),nil),sk7(A)) = A
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_16,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssItem(sk8(A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_17,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssList(sk9(A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_18,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | app(sk9(A),cons(sk8(A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_19,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | lt(sk8(A),sk6(A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_20,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssList(sk7(A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_21,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | app(cons(sk6(A),nil),sk7(A)) = A
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_22,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssItem(sk8(A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_23,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | ssList(sk9(A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_24,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | app(sk9(A),cons(sk8(A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_25,negated_conjecture,
    ( ~ ssList(A)
    | app(sk1,A) != sk2
    | lt(sk8(A),sk6(A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

%--------------------------------------------------------------------------