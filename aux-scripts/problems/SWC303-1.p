%--------------------------------------------------------------------------
% File     : SWC303-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_top_sorted_x_run_ord_front2
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
% Rating   : 0.60 v6.3.0, 0.45 v6.2.0, 0.60 v6.1.0, 0.79 v6.0.0, 0.80 v5.5.0, 0.90 v5.4.0, 0.95 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.86 v4.1.0, 0.92 v4.0.1, 0.91 v3.7.0, 0.90 v3.5.0, 0.91 v3.4.0, 0.92 v3.3.0, 0.93 v3.2.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  203 (  33 non-Horn;  70 unit; 160 RR)
%            Number of atoms       :  629 ( 106 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   59 (  13 constant; 0-2 arity)
%            Number of variables   :  330 (  49 singleton)
%            Maximal term depth    :    6 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC303+1
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
    ( sk4 = sk2 )).

cnf(co1_6,negated_conjecture,
    ( sk3 = sk1 )).

cnf(co1_7,negated_conjecture,
    ( ssList(sk5) )).

cnf(co1_8,negated_conjecture,
    ( app(sk3,sk5) = sk4 )).

cnf(co1_9,negated_conjecture,
    ( totalorderedP(sk3) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk5
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(D,cons(C,nil)) != sk3
    | ~ leq(C,A) )).

cnf(co1_11,negated_conjecture,
    ( ssItem(sk6) )).

cnf(co1_12,negated_conjecture,
    ( ssItem(sk7) )).

cnf(co1_13,negated_conjecture,
    ( ssList(sk8) )).

cnf(co1_14,negated_conjecture,
    ( ssList(sk9) )).

cnf(co1_15,negated_conjecture,
    ( ssList(sk10) )).

cnf(co1_16,negated_conjecture,
    ( app(app(app(app(sk8,cons(sk6,nil)),sk9),cons(sk7,nil)),sk10) = sk1 )).

cnf(co1_17,negated_conjecture,
    ( lt(sk7,sk6) )).

cnf(co1_18,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

%--------------------------------------------------------------------------
