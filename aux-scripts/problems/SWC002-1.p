%--------------------------------------------------------------------------
% File     : SWC002-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_del_max_x_del_max
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
% Rating   : 0.33 v6.3.0, 0.36 v6.2.0, 0.50 v6.1.0, 0.57 v6.0.0, 0.60 v5.5.0, 0.80 v5.3.0, 0.72 v5.2.0, 0.62 v5.1.0, 0.65 v5.0.0, 0.71 v4.1.0, 0.69 v4.0.1, 0.55 v4.0.0, 0.45 v3.7.0, 0.30 v3.5.0, 0.45 v3.4.0, 0.42 v3.3.0, 0.43 v3.2.0, 0.54 v3.1.0, 0.55 v2.7.0, 0.58 v2.6.0, 0.78 v2.5.0, 0.89 v2.4.0
% Syntax   : Number of clauses     :  213 (  43 non-Horn;  60 unit; 170 RR)
%            Number of atoms       :  700 ( 124 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   57 (  10 constant; 0-3 arity)
%            Number of variables   :  352 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC002+1
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
    ( neq(sk2,nil)
    | neq(sk2,nil) )).

cnf(co1_8,negated_conjecture,
    ( neq(sk2,nil)
    | ~ neq(sk4,nil) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | ssItem(sk5(C,B,A))
    | neq(sk2,nil) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | memberP(sk2,sk5(C,B,A))
    | neq(sk2,nil) )).

cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | geq(sk5(C,B,A),A)
    | neq(sk2,nil) )).

cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | A != sk5(C,B,A)
    | neq(sk2,nil) )).

cnf(co1_13,negated_conjecture,
    ( ssItem(sk6)
    | neq(sk2,nil) )).

cnf(co1_14,negated_conjecture,
    ( ssList(sk7)
    | neq(sk2,nil) )).

cnf(co1_15,negated_conjecture,
    ( ssList(sk8)
    | neq(sk2,nil) )).

cnf(co1_16,negated_conjecture,
    ( app(app(sk7,cons(sk6,nil)),sk8) = sk4
    | neq(sk2,nil) )).

cnf(co1_17,negated_conjecture,
    ( app(sk7,sk8) = sk3
    | neq(sk2,nil) )).

cnf(co1_18,negated_conjecture,
    ( ~ ssItem(A)
    | sk6 = A
    | ~ memberP(sk4,A)
    | ~ geq(A,sk6)
    | neq(sk2,nil) )).

cnf(co1_19,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | ssItem(sk5(C,B,A))
    | ~ neq(sk4,nil) )).

cnf(co1_20,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | memberP(sk2,sk5(C,B,A))
    | ~ neq(sk4,nil) )).

cnf(co1_21,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | geq(sk5(C,B,A),A)
    | ~ neq(sk4,nil) )).

cnf(co1_22,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | ~ ssList(C)
    | app(app(B,cons(A,nil)),C) != sk2
    | app(B,C) != sk1
    | A != sk5(C,B,A)
    | ~ neq(sk4,nil) )).

cnf(co1_23,negated_conjecture,
    ( ssItem(sk6)
    | ~ neq(sk4,nil) )).

cnf(co1_24,negated_conjecture,
    ( ssList(sk7)
    | ~ neq(sk4,nil) )).

cnf(co1_25,negated_conjecture,
    ( ssList(sk8)
    | ~ neq(sk4,nil) )).

cnf(co1_26,negated_conjecture,
    ( app(app(sk7,cons(sk6,nil)),sk8) = sk4
    | ~ neq(sk4,nil) )).

cnf(co1_27,negated_conjecture,
    ( app(sk7,sk8) = sk3
    | ~ neq(sk4,nil) )).

cnf(co1_28,negated_conjecture,
    ( ~ ssItem(A)
    | sk6 = A
    | ~ memberP(sk4,A)
    | ~ geq(A,sk6)
    | ~ neq(sk4,nil) )).

%--------------------------------------------------------------------------
