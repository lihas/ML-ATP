<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC344+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC344+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC344+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC344%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC344+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_max2_x_run_strict_ord_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_run_strict_ord_max2_x_run_strict_ord_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.67 v6.4.0, 0.81 v6.3.0, 0.75 v6.2.0, 0.80 v6.1.0, 0.90 v6.0.0, 0.87 v5.5.0, 0.89 v5.4.0, 0.93 v5.2.0, 0.90 v5.0.0, 0.92 v4.1.0, 0.96 v3.7.0, 0.95 v3.3.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  440 (  87 equality)
%            Maximal formula depth :   32 (   7 average)
%            Number of connectives :  380 (  36 ~  ;  20  |;  57  &)
%                                         (  26 &lt;=>; 241 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  227 (   0 singleton; 204 !;  23 ?)
%            Maximal term depth    :    4 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=SWC001+0.ax>SWC001+0.ax</a>').
%--------------------------------------------------------------------------
<A NAME="co1"></A>fof(co1,conjecture,
    ( ! [U] :
        ( ssList(U)
       => ! [V] :
            ( ssList(V)
           => ! [W] :
                ( ssList(W)
               => ! [X] :
                    ( ssList(X)
                   => ( V != X
                      | U != W
                      | ! [Y] :
                          ( ssList(Y)
                         => ! [Z] :
                              ( ssList(Z)
                             => ( app(app(Y,W),Z) != X
                                | ~ strictorderedP(W)
                                | ? [X1] :
                                    ( ssItem(X1)
                                    & ? [X2] :
                                        ( ssList(X2)
                                        & app(X2,cons(X1,nil)) = Y
                                        & ? [X3] :
                                            ( ssItem(X3)
                                            & ? [X4] :
                                                ( ssList(X4)
                                                & app(cons(X3,nil),X4) = W
                                                & lt(X1,X3) ) ) ) )
                                | ? [X5] :
                                    ( ssItem(X5)
                                    & ? [X6] :
                                        ( ssList(X6)
                                        & app(cons(X5,nil),X6) = Z
                                        & ? [X7] :
                                            ( ssItem(X7)
                                            & ? [X8] :
                                                ( ssList(X8)
                                                & app(X8,cons(X7,nil)) = W
                                                & lt(X7,X5) ) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( ? [X9] :
                            ( ssList(X9)
                            & ? [X10] :
                                ( ssList(X10)
                                & app(app(X9,U),X10) = V
                                & ! [X11] :
                                    ( ssItem(X11)
                                   => ! [X12] :
                                        ( ssList(X12)
                                       => ( app(X12,cons(X11,nil)) != X9
                                          | ! [X13] :
                                              ( ssItem(X13)
                                             => ! [X14] :
                                                  ( ssList(X14)
                                                 => ( app(cons(X13,nil),X14) != U
                                                    | ~ lt(X11,X13) ) ) ) ) ) )
                                & ! [X15] :
                                    ( ssItem(X15)
                                   => ! [X16] :
                                        ( ssList(X16)
                                       => ( app(cons(X15,nil),X16) != X10
                                          | ! [X17] :
                                              ( ssItem(X17)
                                             => ! [X18] :
                                                  ( ssList(X18)
                                                 => ( app(X18,cons(X17,nil)) != U
                                                    | ~ lt(X17,X15) ) ) ) ) ) )
                                & strictorderedP(U) ) )
                        & ( nil != U
                          | nil = V ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
