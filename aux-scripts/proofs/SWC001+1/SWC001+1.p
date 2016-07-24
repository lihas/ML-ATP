<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC001+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC001+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC001+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC001%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC001+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_as_set_x_as_set
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_as_set_x_as_set [Wei00]

% Status   : Theorem
% Rating   : 0.20 v6.4.0, 0.23 v6.3.0, 0.25 v6.2.0, 0.32 v6.1.0, 0.33 v6.0.0, 0.22 v5.5.0, 0.30 v5.4.0, 0.36 v5.3.0, 0.37 v5.2.0, 0.25 v5.1.0, 0.24 v5.0.0, 0.21 v4.1.0, 0.22 v4.0.1, 0.30 v4.0.0, 0.29 v3.7.0, 0.25 v3.5.0, 0.21 v3.4.0, 0.32 v3.3.0, 0.21 v3.2.0, 0.09 v3.1.0, 0.22 v2.7.0, 0.33 v2.5.0, 0.17 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  412 (  73 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  347 (  31 ~  ;  14  |;  44  &)
%                                         (  26 &lt;=>; 232 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  209 (   0 singleton; 195 !;  14 ?)
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
                      | ~ duplicatefreeP(W)
                      | ? [Y] :
                          ( ssItem(Y)
                          & ( ( ~ memberP(X,Y)
                              & memberP(W,Y) )
                            | ( ~ memberP(W,Y)
                              & memberP(X,Y) ) ) )
                      | ( ! [Z] :
                            ( ssItem(Z)
                           => ( ( ~ memberP(V,Z)
                                & ~ memberP(U,Z) )
                              | ( memberP(V,Z)
                                & memberP(U,Z) ) ) )
                        & duplicatefreeP(U) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
