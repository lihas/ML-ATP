%--------------------------------------------------------------------------
% File     : SWC379-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_set_min_elems_x_set_min_elems
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
% Rating   : 0.33 v6.3.0, 0.27 v6.2.0, 0.30 v6.1.0, 0.57 v6.0.0, 0.50 v5.5.0, 0.65 v5.3.0, 0.78 v5.2.0, 0.62 v5.1.0, 0.65 v5.0.0, 0.57 v4.1.0, 0.46 v4.0.1, 0.27 v4.0.0, 0.36 v3.7.0, 0.30 v3.5.0, 0.45 v3.4.0, 0.50 v3.3.0, 0.57 v3.2.0, 0.69 v3.1.0, 0.45 v2.7.0, 0.50 v2.6.0, 0.78 v2.4.0
% Syntax   : Number of clauses     :  204 (  38 non-Horn;  61 unit; 161 RR)
%            Number of atoms       :  655 ( 104 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   56 (   9 constant; 0-2 arity)
%            Number of variables   :  334 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC379+1
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
    | memberP(sk3,A)
    | ssItem(sk5(A))
    | ~ memberP(sk4,A) )).

cnf(co1_8,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | memberP(sk4,sk5(A))
    | ~ memberP(sk4,A) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | leq(sk5(A),A)
    | ~ memberP(sk4,A) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | A != sk5(A)
    | ~ memberP(sk4,A) )).

cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk3,A)
    | memberP(sk4,A) )).

cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk3,A)
    | ~ ssItem(B)
    | A = B
    | ~ memberP(sk4,B)
    | ~ leq(B,A) )).

cnf(co1_13,negated_conjecture,
    ( ssItem(sk6) )).

cnf(co1_14,negated_conjecture,
    ( memberP(sk1,sk6)
    | memberP(sk2,sk6) )).

cnf(co1_15,negated_conjecture,
    ( memberP(sk1,sk6)
    | ~ ssItem(A)
    | sk6 = A
    | ~ memberP(sk2,A)
    | ~ leq(A,sk6) )).

cnf(co1_16,negated_conjecture,
    ( ssItem(sk7)
    | ~ memberP(sk2,sk6)
    | ~ memberP(sk1,sk6) )).

cnf(co1_17,negated_conjecture,
    ( memberP(sk2,sk7)
    | ~ memberP(sk2,sk6)
    | ~ memberP(sk1,sk6) )).

cnf(co1_18,negated_conjecture,
    ( leq(sk7,sk6)
    | ~ memberP(sk2,sk6)
    | ~ memberP(sk1,sk6) )).

cnf(co1_19,negated_conjecture,
    ( sk6 != sk7
    | ~ memberP(sk2,sk6)
    | ~ memberP(sk1,sk6) )).

%--------------------------------------------------------------------------
