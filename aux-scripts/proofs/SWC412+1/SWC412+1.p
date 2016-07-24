<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC412+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC412+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC412+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC412%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC412+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_swap_ends_x_swap_ends
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_swap_ends_x_swap_ends [Wei00]

% Status   : Theorem
% Rating   : 0.37 v6.4.0, 0.42 v6.3.0, 0.50 v6.2.0, 0.52 v6.1.0, 0.63 v6.0.0, 0.61 v5.5.0, 0.67 v5.4.0, 0.68 v5.3.0, 0.70 v5.2.0, 0.60 v5.1.0, 0.62 v4.1.0, 0.61 v4.0.1, 0.70 v4.0.0, 0.71 v3.7.0, 0.70 v3.5.0, 0.79 v3.3.0, 0.71 v3.2.0, 0.64 v3.1.0, 0.67 v2.7.0, 0.50 v2.6.0, 0.83 v2.5.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  422 (  80 equality)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  358 (  32 ~  ;  16  |;  46  &)
%                                         (  26 &lt;=>; 238 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  222 (   0 singleton; 203 !;  19 ?)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | ( ( ? [Y] :
                            ( ssItem(Y)
                            & ? [Z] :
                                ( ssItem(Z)
                                & ? [X1] :
                                    ( ssList(X1)
                                    & app(app(cons(Y,nil),cons(Z,nil)),X1) = X ) ) )
                        | ! [X2] :
                            ( ssItem(X2)
                           => ! [X3] :
                                ( ssItem(X3)
                               => ! [X4] :
                                    ( ssList(X4)
                                   => app(app(cons(X2,nil),cons(X3,nil)),X4) != V ) ) ) )
                      & ( ? [X5] :
                            ( ssItem(X5)
                            & ? [X6] :
                                ( ssItem(X6)
                                & ? [X7] :
                                    ( ssList(X7)
                                    & app(app(cons(X6,nil),X7),cons(X5,nil)) != W
                                    & app(app(cons(X5,nil),X7),cons(X6,nil)) = X ) ) )
                        | ! [X8] :
                            ( ssItem(X8)
                           => ! [X9] :
                                ( ssItem(X9)
                               => ! [X10] :
                                    ( ssList(X10)
                                   => app(app(cons(X8,nil),cons(X9,nil)),X10) != V ) ) )
                        | ! [X11] :
                            ( ssItem(X11)
                           => ! [X12] :
                                ( ssItem(X12)
                               => ! [X13] :
                                    ( ~ ssList(X13)
                                    | app(app(cons(X11,nil),X13),cons(X12,nil)) != V
                                    | app(app(cons(X12,nil),X13),cons(X11,nil)) = U ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
