%--------------------------------------------------------------------------
% File     : SWC216-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_not_nil_ne_x_set_min_elems
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
% Syntax   : Number of clauses     :  199 (  36 non-Horn;  62 unit; 156 RR)
%            Number of atoms       :  637 ( 102 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   54 (   7 constant; 0-2 arity)
%            Number of variables   :  333 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNK_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC216+1
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
    ( neq(sk2,nil) )).

cnf(co1_8,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | ssItem(sk5(A))
    | ~ memberP(sk4,A) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | memberP(sk4,sk5(A))
    | ~ memberP(sk4,A) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | leq(sk5(A),A)
    | ~ memberP(sk4,A) )).

cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | memberP(sk3,A)
    | A != sk5(A)
    | ~ memberP(sk4,A) )).

cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk3,A)
    | memberP(sk4,A) )).

cnf(co1_13,negated_conjecture,
    ( ~ ssItem(A)
    | ~ memberP(sk3,A)
    | ~ ssItem(B)
    | A = B
    | ~ memberP(sk4,B)
    | ~ leq(B,A) )).

cnf(co1_14,negated_conjecture,
    ( ~ neq(sk1,nil) )).

%--------------------------------------------------------------------------
