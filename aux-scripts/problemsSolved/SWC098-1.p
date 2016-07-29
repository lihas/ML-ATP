%--------------------------------------------------------------------------
% File     : SWC098-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_maximal_x_maximal
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
% Rating   : 0.27 v6.2.0, 0.30 v6.1.0, 0.50 v5.5.0, 0.65 v5.3.0, 0.78 v5.2.0, 0.62 v5.1.0, 0.71 v5.0.0, 0.50 v4.1.0, 0.54 v4.0.1, 0.45 v3.7.0, 0.30 v3.5.0, 0.36 v3.4.0, 0.42 v3.3.0, 0.50 v3.2.0, 0.54 v3.1.0, 0.55 v2.7.0, 0.42 v2.6.0, 0.56 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of clauses     :  204 (  41 non-Horn;  60 unit; 161 RR)
%            Number of atoms       :  650 ( 119 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   55 (   8 constant; 0-2 arity)
%            Number of variables   :  332 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC098+1
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
    ( ~ ssItem(A)
    | cons(A,nil) != sk1
    | ssItem(sk5(A))
    | ~ memberP(sk2,A) )).

cnf(co1_8,negated_conjecture,
    ( ~ ssItem(A)
    | cons(A,nil) != sk1
    | memberP(sk2,sk5(A))
    | ~ memberP(sk2,A) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | cons(A,nil) != sk1
    | leq(A,sk5(A))
    | ~ memberP(sk2,A) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | cons(A,nil) != sk1
    | A != sk5(A)
    | ~ memberP(sk2,A) )).

cnf(co1_11,negated_conjecture,
    ( nil != sk2
    | nil != sk1 )).

cnf(co1_12,negated_conjecture,
    ( ssItem(sk6)
    | nil = sk4 )).

cnf(co1_13,negated_conjecture,
    ( ssItem(sk6)
    | nil = sk3 )).

cnf(co1_14,negated_conjecture,
    ( cons(sk6,nil) = sk3
    | nil = sk4 )).

cnf(co1_15,negated_conjecture,
    ( memberP(sk4,sk6)
    | nil = sk4 )).

cnf(co1_16,negated_conjecture,
    ( ~ ssItem(A)
    | sk6 = A
    | ~ memberP(sk4,A)
    | ~ leq(sk6,A)
    | nil = sk4 )).

cnf(co1_17,negated_conjecture,
    ( cons(sk6,nil) = sk3
    | nil = sk3 )).

cnf(co1_18,negated_conjecture,
    ( memberP(sk4,sk6)
    | nil = sk3 )).

cnf(co1_19,negated_conjecture,
    ( ~ ssItem(A)
    | sk6 = A
    | ~ memberP(sk4,A)
    | ~ leq(sk6,A)
    | nil = sk3 )).

%--------------------------------------------------------------------------
