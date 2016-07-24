<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC076+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC076+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC076+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC076%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC076+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_id_segment_total2_x_run_eq_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_total2_x_run_eq_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.30 v6.4.0, 0.42 v6.2.0, 0.52 v6.1.0, 0.53 v6.0.0, 0.52 v5.5.0, 0.59 v5.4.0, 0.61 v5.3.0, 0.63 v5.2.0, 0.60 v5.1.0, 0.57 v5.0.0, 0.50 v4.1.0, 0.48 v4.0.1, 0.57 v4.0.0, 0.54 v3.7.0, 0.55 v3.5.0, 0.53 v3.4.0, 0.58 v3.3.0, 0.43 v3.2.0, 0.18 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  422 (  82 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  355 (  29 ~  ;  16  |;  51  &)
%                                         (  26 &lt;=>; 233 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 196 !;  20 ?)
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
                      | ? [Y] :
                          ( ssList(Y)
                          & neq(Y,nil)
                          & segmentP(V,Y)
                          & segmentP(U,Y) )
                      | ! [Z] :
                          ( ssList(Z)
                         => ! [X1] :
                              ( ssList(X1)
                             => ( app(app(Z,W),X1) != X
                                | ~ equalelemsP(W)
                                | ? [X2] :
                                    ( ssItem(X2)
                                    & ? [X3] :
                                        ( ssList(X3)
                                        & app(X3,cons(X2,nil)) = Z
                                        & ? [X4] :
                                            ( ssList(X4)
                                            & app(cons(X2,nil),X4) = W ) ) )
                                | ? [X5] :
                                    ( ssItem(X5)
                                    & ? [X6] :
                                        ( ssList(X6)
                                        & app(cons(X5,nil),X6) = X1
                                        & ? [X7] :
                                            ( ssList(X7)
                                            & app(X7,cons(X5,nil)) = W ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( nil = V
                        & nil = U ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
