%--------------------------------------------------------------------------
% File     : SWC156-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_cyc_sorted_x_run_eq_front1
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

% Status   : Unknown
% Rating   : 1.00 v2.4.0
% Syntax   : Number of clauses     :  204 (  33 non-Horn;  69 unit; 161 RR)
%            Number of atoms       :  631 ( 101 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   59 (  13 constant; 0-2 arity)
%            Number of variables   :  327 (  49 singleton)
%            Maximal term depth    :    6 (   1 average)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC156+1
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
    ( frontsegP(sk4,sk3) )).

cnf(co1_8,negated_conjecture,
    ( equalelemsP(sk3) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssList(A)
    | ~ neq(sk3,A)
    | ~ frontsegP(sk4,A)
    | ~ segmentP(A,sk3)
    | ~ equalelemsP(A) )).

cnf(co1_10,negated_conjecture,
    ( ssItem(sk5) )).

cnf(co1_11,negated_conjecture,
    ( ssItem(sk6) )).

cnf(co1_12,negated_conjecture,
    ( ssList(sk7) )).

cnf(co1_13,negated_conjecture,
    ( ssList(sk8) )).

cnf(co1_14,negated_conjecture,
    ( ssList(sk9) )).

cnf(co1_15,negated_conjecture,
    ( app(app(app(app(sk7,cons(sk5,nil)),sk8),cons(sk6,nil)),sk9) = sk1 )).

cnf(co1_16,negated_conjecture,
    ( leq(sk6,sk5) )).

cnf(co1_17,negated_conjecture,
    ( ssItem(sk10)
    | ~ leq(sk5,sk6) )).

cnf(co1_18,negated_conjecture,
    ( memberP(sk8,sk10)
    | ~ leq(sk5,sk6) )).

cnf(co1_19,negated_conjecture,
    ( ~ leq(sk5,sk10)
    | ~ leq(sk10,sk6)
    | ~ leq(sk5,sk6) )).

%--------------------------------------------------------------------------
