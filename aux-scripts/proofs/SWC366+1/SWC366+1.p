<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC366+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC366+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC366+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC366%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC366+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_segment_rear_ne_x_tail2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_segment_rear_ne_x_tail2 [Wei00]

% Status   : Theorem
% Rating   : 0.53 v6.4.0, 0.58 v6.3.0, 0.71 v6.2.0, 0.88 v6.1.0, 0.87 v6.0.0, 0.91 v5.5.0, 0.93 v5.3.0, 0.96 v5.2.0, 0.90 v5.1.0, 0.86 v5.0.0, 0.88 v4.1.0, 0.87 v4.0.1, 0.91 v4.0.0, 0.88 v3.7.0, 0.85 v3.5.0, 0.89 v3.3.0, 0.86 v3.2.0, 1.00 v3.1.0, 0.89 v2.7.0, 0.67 v2.5.0, 0.83 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  412 (  77 equality)
%            Maximal formula depth :   24 (   7 average)
%            Number of connectives :  345 (  29 ~  ;  13  |;  46  &)
%                                         (  26 &lt;=>; 231 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 194 !;  16 ?)
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
                      | ( ( ~ neq(V,nil)
                          | ? [Y] :
                              ( ssList(Y)
                              & X != Y
                              & ? [Z] :
                                  ( ssList(Z)
                                  & app(Z,W) = Y
                                  & ? [X1] :
                                      ( ssItem(X1)
                                      & cons(X1,nil) = Z
                                      & hd(X) = X1
                                      & neq(nil,X) ) ) )
                          | rearsegP(V,U) )
                        & ( ~ neq(V,nil)
                          | neq(X,nil) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
