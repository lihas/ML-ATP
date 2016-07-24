<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC303+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC303+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC303+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC303%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC303+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_pst_top_sorted_x_run_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_top_sorted_x_run_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.77 v6.4.0, 0.73 v6.3.0, 0.67 v6.2.0, 0.84 v6.1.0, 0.90 v6.0.0, 0.83 v5.5.0, 0.85 v5.4.0, 0.89 v5.3.0, 0.93 v5.2.0, 0.90 v5.1.0, 0.95 v5.0.0, 0.96 v3.7.0, 0.95 v3.3.0, 0.93 v3.2.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  419 (  79 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  357 (  34 ~  ;  18  |;  45  &)
%                                         (  26 &lt;=>; 234 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 200 !;  17 ?)
%            Maximal term depth    :    6 (   1 average)
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
                    ( ~ ssList(X)
                    | X != V
                    | W != U
                    | ! [Y] :
                        ( ~ ssList(Y)
                        | app(W,Y) != X
                        | ~ totalorderedP(W)
                        | ? [Z] :
                            ( ssItem(Z)
                            & ? [X1] :
                                ( ssList(X1)
                                & app(cons(Z,nil),X1) = Y
                                & ? [X2] :
                                    ( ssItem(X2)
                                    & ? [X3] :
                                        ( ssList(X3)
                                        & app(X3,cons(X2,nil)) = W
                                        & leq(X2,Z) ) ) ) ) )
                    | ! [X4] :
                        ( ssItem(X4)
                       => ! [X5] :
                            ( ssItem(X5)
                           => ! [X6] :
                                ( ssList(X6)
                               => ! [X7] :
                                    ( ssList(X7)
                                   => ! [X8] :
                                        ( ~ ssList(X8)
                                        | app(app(app(app(X6,cons(X4,nil)),X7),cons(X5,nil)),X8) != U
                                        | ~ lt(X5,X4) ) ) ) ) )
                    | ( nil != X
                      & nil = W ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
