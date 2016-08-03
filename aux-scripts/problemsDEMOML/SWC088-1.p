%--------------------------------------------------------------------------
% File     : SWC088-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_id_segment_x_rot_l_total3
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
% Rating   : 0.80 v6.4.0, 0.73 v6.3.0, 0.64 v6.2.0, 0.80 v6.1.0, 1.00 v5.0.0, 0.93 v4.1.0, 1.00 v2.5.0, 0.89 v2.4.0
% Syntax   : Number of clauses     :  195 (  33 non-Horn;  61 unit; 152 RR)
%            Number of atoms       :  621 ( 104 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   53 (   7 constant; 0-2 arity)
%            Number of variables   :  329 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC088+1
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
    ( ~ ssList(A)
    | ~ neq(A,nil)
    | ~ segmentP(sk2,A)
    | ~ segmentP(sk1,A) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(B,cons(A,nil)) = sk3
    | app(cons(A,nil),B) != sk4 )).

cnf(co1_10,negated_conjecture,
    ( nil = sk3
    | nil != sk4 )).

%--------------------------------------------------------------------------