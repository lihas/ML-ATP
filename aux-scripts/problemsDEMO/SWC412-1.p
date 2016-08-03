%--------------------------------------------------------------------------
% File     : SWC412-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_swap_ends_x_swap_ends
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
% Rating   : 0.47 v6.4.0, 0.40 v6.3.0, 0.55 v6.2.0, 0.60 v6.1.0, 0.71 v6.0.0, 0.70 v5.5.0, 0.85 v5.3.0, 0.83 v5.2.0, 0.75 v5.1.0, 0.76 v5.0.0, 0.71 v4.1.0, 0.69 v4.0.1, 0.73 v4.0.0, 0.64 v3.7.0, 0.60 v3.5.0, 0.73 v3.4.0, 0.75 v3.3.0, 0.71 v3.2.0, 0.85 v3.1.0, 0.82 v2.7.0, 0.83 v2.6.0, 0.89 v2.5.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  241 (  69 non-Horn;  60 unit; 198 RR)
%            Number of atoms       :  760 ( 145 equality)
%            Maximal clause size   :   10 (   3 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   62 (  16 constant; 0-2 arity)
%            Number of variables   :  371 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC412+1
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
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ~ ssItem(D)
    | ~ ssItem(E)
    | ~ ssList(F)
    | app(app(cons(E,nil),F),cons(D,nil)) = sk3
    | app(app(cons(D,nil),F),cons(E,nil)) != sk4 )).

cnf(co1_8,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssItem(sk8) )).

cnf(co1_9,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssItem(sk9) )).

cnf(co1_10,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssList(sk10) )).

cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk2 )).

cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssItem(sk11) )).

cnf(co1_13,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssItem(sk12) )).

cnf(co1_14,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | ssList(sk13) )).

cnf(co1_15,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | app(app(cons(sk11,nil),sk13),cons(sk12,nil)) = sk2 )).

cnf(co1_16,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(A,nil),cons(B,nil)),C) != sk4
    | app(app(cons(sk12,nil),sk13),cons(sk11,nil)) != sk1 )).

cnf(co1_17,negated_conjecture,
    ( ssItem(sk5)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(B,nil),C),cons(A,nil)) = sk3
    | app(app(cons(A,nil),C),cons(B,nil)) != sk4 )).

cnf(co1_18,negated_conjecture,
    ( ssItem(sk6)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(B,nil),C),cons(A,nil)) = sk3
    | app(app(cons(A,nil),C),cons(B,nil)) != sk4 )).

cnf(co1_19,negated_conjecture,
    ( ssList(sk7)
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(B,nil),C),cons(A,nil)) = sk3
    | app(app(cons(A,nil),C),cons(B,nil)) != sk4 )).

cnf(co1_20,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ~ ssItem(A)
    | ~ ssItem(B)
    | ~ ssList(C)
    | app(app(cons(B,nil),C),cons(A,nil)) = sk3
    | app(app(cons(A,nil),C),cons(B,nil)) != sk4 )).

cnf(co1_21,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk8) )).

cnf(co1_22,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk9) )).

cnf(co1_23,negated_conjecture,
    ( ssItem(sk5)
    | ssList(sk10) )).

cnf(co1_24,negated_conjecture,
    ( ssItem(sk5)
    | app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk2 )).

cnf(co1_25,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk11) )).

cnf(co1_26,negated_conjecture,
    ( ssItem(sk5)
    | ssItem(sk12) )).

cnf(co1_27,negated_conjecture,
    ( ssItem(sk5)
    | ssList(sk13) )).

cnf(co1_28,negated_conjecture,
    ( ssItem(sk5)
    | app(app(cons(sk11,nil),sk13),cons(sk12,nil)) = sk2 )).

cnf(co1_29,negated_conjecture,
    ( ssItem(sk5)
    | app(app(cons(sk12,nil),sk13),cons(sk11,nil)) != sk1 )).

cnf(co1_30,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk8) )).

cnf(co1_31,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk9) )).

cnf(co1_32,negated_conjecture,
    ( ssItem(sk6)
    | ssList(sk10) )).

cnf(co1_33,negated_conjecture,
    ( ssItem(sk6)
    | app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk2 )).

cnf(co1_34,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk8) )).

cnf(co1_35,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk8) )).

cnf(co1_36,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk9) )).

cnf(co1_37,negated_conjecture,
    ( ssList(sk7)
    | ssList(sk10) )).

cnf(co1_38,negated_conjecture,
    ( ssList(sk7)
    | app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk2 )).

cnf(co1_39,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk9) )).

cnf(co1_40,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssList(sk10) )).

cnf(co1_41,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | app(app(cons(sk8,nil),cons(sk9,nil)),sk10) = sk2 )).

cnf(co1_42,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk11) )).

cnf(co1_43,negated_conjecture,
    ( ssItem(sk6)
    | ssItem(sk12) )).

cnf(co1_44,negated_conjecture,
    ( ssItem(sk6)
    | ssList(sk13) )).

cnf(co1_45,negated_conjecture,
    ( ssItem(sk6)
    | app(app(cons(sk11,nil),sk13),cons(sk12,nil)) = sk2 )).

cnf(co1_46,negated_conjecture,
    ( ssItem(sk6)
    | app(app(cons(sk12,nil),sk13),cons(sk11,nil)) != sk1 )).

cnf(co1_47,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk11) )).

cnf(co1_48,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk11) )).

cnf(co1_49,negated_conjecture,
    ( ssList(sk7)
    | ssItem(sk12) )).

cnf(co1_50,negated_conjecture,
    ( ssList(sk7)
    | ssList(sk13) )).

cnf(co1_51,negated_conjecture,
    ( ssList(sk7)
    | app(app(cons(sk11,nil),sk13),cons(sk12,nil)) = sk2 )).

cnf(co1_52,negated_conjecture,
    ( ssList(sk7)
    | app(app(cons(sk12,nil),sk13),cons(sk11,nil)) != sk1 )).

cnf(co1_53,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssItem(sk12) )).

cnf(co1_54,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | ssList(sk13) )).

cnf(co1_55,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | app(app(cons(sk11,nil),sk13),cons(sk12,nil)) = sk2 )).

cnf(co1_56,negated_conjecture,
    ( app(app(cons(sk5,nil),cons(sk6,nil)),sk7) = sk2
    | app(app(cons(sk12,nil),sk13),cons(sk11,nil)) != sk1 )).

%--------------------------------------------------------------------------
