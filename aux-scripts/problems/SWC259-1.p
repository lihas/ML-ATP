%--------------------------------------------------------------------------
% File     : SWC259-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_sorted1_x_pivot
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
% Rating   : 0.13 v6.4.0, 0.07 v6.3.0, 0.09 v6.2.0, 0.10 v6.1.0, 0.29 v6.0.0, 0.20 v5.5.0, 0.45 v5.3.0, 0.39 v5.2.0, 0.38 v5.1.0, 0.41 v5.0.0, 0.36 v4.1.0, 0.38 v4.0.1, 0.27 v3.7.0, 0.10 v3.5.0, 0.09 v3.4.0, 0.25 v3.3.0, 0.29 v3.2.0, 0.31 v3.1.0, 0.36 v2.7.0, 0.33 v2.6.0, 0.44 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of clauses     :  206 (  43 non-Horn;  61 unit; 163 RR)
%            Number of atoms       :  647 ( 118 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   56 (  10 constant; 0-2 arity)
%            Number of variables   :  330 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC259+1
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
    ( ~ totalorderedP(sk1) )).

cnf(co1_8,negated_conjecture,
    ( ssItem(sk5)
    | nil = sk4 )).

cnf(co1_9,negated_conjecture,
    ( ssItem(sk5)
    | nil = sk3 )).

cnf(co1_10,negated_conjecture,
    ( ssList(sk6)
    | nil = sk4 )).

cnf(co1_11,negated_conjecture,
    ( ssList(sk7)
    | nil = sk4 )).

cnf(co1_12,negated_conjecture,
    ( cons(sk5,nil) = sk3
    | nil = sk4 )).

cnf(co1_13,negated_conjecture,
    ( app(app(sk6,sk3),sk7) = sk4
    | nil = sk4 )).

cnf(co1_14,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk6,A)
    | ~ lt(sk5,A)
    | nil = sk4 )).

cnf(co1_15,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk7,A)
    | ~ lt(A,sk5)
    | nil = sk4 )).

cnf(co1_16,negated_conjecture,
    ( ssList(sk6)
    | nil = sk3 )).

cnf(co1_17,negated_conjecture,
    ( ssList(sk7)
    | nil = sk3 )).

cnf(co1_18,negated_conjecture,
    ( cons(sk5,nil) = sk3
    | nil = sk3 )).

cnf(co1_19,negated_conjecture,
    ( app(app(sk6,sk3),sk7) = sk4
    | nil = sk3 )).

cnf(co1_20,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk6,A)
    | ~ lt(sk5,A)
    | nil = sk3 )).

cnf(co1_21,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk7,A)
    | ~ lt(A,sk5)
    | nil = sk3 )).

%--------------------------------------------------------------------------
