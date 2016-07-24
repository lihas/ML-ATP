%--------------------------------------------------------------------------
% File     : SWC344-1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_max2_x_run_strict_ord_max2
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
% Rating   : 0.60 v6.3.0, 0.64 v6.2.0, 0.70 v6.1.0, 0.79 v6.0.0, 0.90 v5.5.0, 0.95 v5.3.0, 1.00 v5.2.0, 0.94 v5.0.0, 0.93 v4.1.0, 0.92 v4.0.1, 0.91 v3.7.0, 0.90 v3.5.0, 0.91 v3.4.0, 0.92 v3.3.0, 0.93 v3.2.0, 1.00 v2.4.0
% Syntax   : Number of clauses     :  296 ( 131 non-Horn;  64 unit; 253 RR)
%            Number of atoms       : 1316 ( 359 equality)
%            Maximal clause size   :   10 (   4 average)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :   63 (   9 constant; 0-2 arity)
%            Number of variables   :  530 (  49 singleton)
%            Maximal term depth    :    5 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : Created by CNF conversion from SWC344+1
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
    ( ssList(sk5) )).

cnf(co1_8,negated_conjecture,
    ( ssList(sk6) )).

cnf(co1_9,negated_conjecture,
    ( app(app(sk5,sk3),sk6) = sk4 )).

cnf(co1_10,negated_conjecture,
    ( strictorderedP(sk3) )).

cnf(co1_11,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(B,cons(A,nil)) != sk5
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(cons(C,nil),D) != sk3
    | ~ lt(A,C) )).

cnf(co1_12,negated_conjecture,
    ( ~ ssItem(A)
    | ~ ssList(B)
    | app(cons(A,nil),B) != sk6
    | ~ ssItem(C)
    | ~ ssList(D)
    | app(D,cons(C,nil)) != sk3
    | ~ lt(C,A) )).

cnf(co1_13,negated_conjecture,
    ( nil = sk4
    | nil != sk3 )).

cnf(co1_14,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_15,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_16,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_17,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_18,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_19,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_20,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_21,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_22,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_23,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_24,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_25,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_26,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_27,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_28,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_29,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_30,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_31,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_32,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_33,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_34,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_35,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_36,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_37,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_38,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_39,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_40,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_41,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_42,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_43,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_44,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_45,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_46,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_47,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_48,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_49,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_50,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_51,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_52,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_53,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_54,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_55,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_56,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_57,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_58,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_59,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_60,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_61,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_62,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_63,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil = sk1 )).

cnf(co1_64,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_65,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_66,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_67,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_68,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_69,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk7(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_70,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_71,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_72,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_73,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_74,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_75,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_76,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_77,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_78,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_79,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_80,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_81,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk8(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_82,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_83,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_84,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_85,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_86,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk12(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_87,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_88,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_89,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_90,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_91,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(sk8(B,A),cons(sk7(B,A),nil)) = A
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_92,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_93,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_94,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_95,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(cons(sk11(B,A),nil),sk12(B,A)) = B
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_96,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_97,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_98,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_99,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssItem(sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_100,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_101,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_102,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssItem(sk13(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_103,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_104,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_105,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | ssList(sk10(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_106,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_107,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | ssList(sk14(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_108,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_109,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | app(cons(sk9(B,A),nil),sk10(B,A)) = sk1
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_110,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | app(sk14(B,A),cons(sk13(B,A),nil)) = sk1
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

cnf(co1_111,negated_conjecture,
    ( ~ ssList(A)
    | ~ ssList(B)
    | app(app(A,sk1),B) != sk2
    | lt(sk7(B,A),sk9(B,A))
    | lt(sk13(B,A),sk11(B,A))
    | ~ strictorderedP(sk1)
    | nil != sk2 )).

%--------------------------------------------------------------------------
