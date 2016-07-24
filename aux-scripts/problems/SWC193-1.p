%--------------------------------------------------------------------------
% File     : SWC193-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_equal1_x_some_total3
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
% Rating   : 0.67 v6.3.0, 0.64 v6.2.0, 0.60 v6.1.0, 0.86 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.86 v4.1.0, 0.92 v4.0.1, 0.82 v4.0.0, 0.91 v3.7.0, 0.90 v3.5.0, 0.91 v3.4.0, 0.92 v3.3.0, 0.86 v3.2.0, 0.85 v3.1.0, 0.91 v2.7.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  199 (  33 non-Horn;  67 unit; 156 RR)
%            Number of atoms       :  619 ( 102 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   57 (  11 constant; 0-2 arity)
%            Number of variables   :  326 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC193+1
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
    ( segmentP(sk4,sk3) )).

cnf(co1_8,negated_conjecture,
    ( ssItem(sk5) )).

cnf(co1_9,negated_conjecture,
    ( ssItem(sk6) )).

cnf(co1_10,negated_conjecture,
    ( ssList(sk7) )).

cnf(co1_11,negated_conjecture,
    ( ssList(sk8) )).

cnf(co1_12,negated_conjecture,
    ( app(app(app(sk7,cons(sk5,nil)),cons(sk6,nil)),sk8) = sk1 )).

cnf(co1_13,negated_conjecture,
    (  sk5 != sk6 )).

cnf(co1_14,negated_conjecture,
    ( singletonP(sk3)
    | ~ neq(sk4,nil) )).

%--------------------------------------------------------------------------
