%--------------------------------------------------------------------------
% File     : SWC315-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_rot_l_total3_x_rot_l_total2
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
% Rating   : 0.53 v6.3.0, 0.45 v6.2.0, 0.60 v6.1.0, 0.64 v6.0.0, 0.70 v5.5.0, 0.85 v5.3.0, 0.89 v5.2.0, 0.81 v5.1.0, 0.82 v5.0.0, 0.79 v4.1.0, 0.77 v4.0.1, 0.64 v3.7.0, 0.70 v3.5.0, 0.73 v3.4.0, 0.75 v3.3.0, 0.64 v3.2.0, 0.77 v3.1.0, 0.64 v2.7.0, 0.83 v2.6.0, 0.78 v2.4.0
% Syntax   : Number of clauses     :  204 (  36 non-Horn;  60 unit; 161 RR)
%            Number of atoms       :  636 ( 116 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   57 (  11 constant; 0-2 arity)
%            Number of variables   :  326 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC315+1
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
    ( nil = sk3
    | nil != sk4 )).

cnf(co1_8,negated_conjecture,
    ( ssItem(sk5)
    | nil = sk2 )).

cnf(co1_9,negated_conjecture,
    ( ssItem(sk5)
    | nil != sk1 )).

cnf(co1_10,negated_conjecture,
    ( ssList(sk6)
    | nil = sk2 )).

cnf(co1_11,negated_conjecture,
    ( app(cons(sk5,nil),sk6) = sk2
    | nil = sk2 )).

cnf(co1_12,negated_conjecture,
    ( app(sk6,cons(sk5,nil)) != sk1
    | nil = sk2 )).

cnf(co1_13,negated_conjecture,
    ( ssList(sk6)
    | nil != sk1 )).

cnf(co1_14,negated_conjecture,
    ( app(cons(sk5,nil),sk6) = sk2
    | nil != sk1 )).

cnf(co1_15,negated_conjecture,
    ( app(sk6,cons(sk5,nil)) != sk1
    | nil != sk1 )).

cnf(co1_16,negated_conjecture,
    ( ssItem(sk7)
    | ~ neq(sk4,nil) )).

cnf(co1_17,negated_conjecture,
    ( ssList(sk8)
    | ~ neq(sk4,nil) )).

cnf(co1_18,negated_conjecture,
    ( app(cons(sk7,nil),sk8) = sk4
    | ~ neq(sk4,nil) )).

cnf(co1_19,negated_conjecture,
    ( app(sk8,cons(sk7,nil)) = sk3
    | ~ neq(sk4,nil) )).

%--------------------------------------------------------------------------
