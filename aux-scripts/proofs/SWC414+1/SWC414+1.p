<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC414+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC414+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC414+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC414%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC414+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_swap_x_swap_tos
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_swap_x_swap_tos [Wei00]

% Status   : Theorem
% Rating   : 0.77 v6.4.0, 0.73 v6.3.0, 0.75 v6.2.0, 0.92 v6.1.0, 0.97 v6.0.0, 0.96 v5.2.0, 0.95 v5.0.0, 0.96 v4.0.1, 1.00 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  424 (  80 equality)
%            Maximal formula depth :   24 (   7 average)
%            Number of connectives :  360 (  32 ~  ;  16  |;  48  &)
%                                         (  26 &lt;=>; 238 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  224 (   0 singleton; 203 !;  21 ?)
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
                    | V != X
                    | U != W
                    | ( ( ? [Y] :
                            ( ssItem(Y)
                            & ? [Z] :
                                ( ssItem(Z)
                                & ? [X1] :
                                    ( ssList(X1)
                                    & ? [X2] :
                                        ( ssList(X2)
                                        & ? [X3] :
                                            ( ssList(X3)
                                            & app(app(app(app(X1,cons(Y,nil)),X2),cons(Z,nil)),X3) = V
                                            & app(app(app(app(X1,cons(Z,nil)),X2),cons(Y,nil)),X3) = U ) ) ) ) )
                        | ! [X4] :
                            ( ssItem(X4)
                           => ! [X5] :
                                ( ssItem(X5)
                               => ! [X6] :
                                    ( ssList(X6)
                                   => app(app(cons(X4,nil),cons(X5,nil)),X6) != V ) ) )
                        | ! [X7] :
                            ( ssItem(X7)
                           => ! [X8] :
                                ( ssItem(X8)
                               => ! [X9] :
                                    ( ~ ssList(X9)
                                    | app(app(cons(X7,nil),cons(X8,nil)),X9) != X
                                    | app(app(cons(X8,nil),cons(X7,nil)),X9) != W ) ) ) )
                      & ( ? [X10] :
                            ( ssItem(X10)
                            & ? [X11] :
                                ( ssItem(X11)
                                & ? [X12] :
                                    ( ssList(X12)
                                    & app(app(cons(X10,nil),cons(X11,nil)),X12) = X ) ) )
                        | ! [X13] :
                            ( ssItem(X13)
                           => ! [X14] :
                                ( ssItem(X14)
                               => ! [X15] :
                                    ( ssList(X15)
                                   => app(app(cons(X13,nil),cons(X14,nil)),X15) != V ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
