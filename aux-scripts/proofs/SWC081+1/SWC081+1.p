<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC081+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC081+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC081+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC081%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC081+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_id_segment_x_id_front_total2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_x_id_front_total2 [Wei00]

% Status   : Theorem
% Rating   : 0.57 v6.4.0, 0.58 v6.2.0, 0.72 v6.1.0, 0.80 v6.0.0, 0.74 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.70 v5.1.0, 0.71 v5.0.0, 0.75 v4.1.0, 0.74 v4.0.0, 0.75 v3.7.0, 0.80 v3.5.0, 0.79 v3.3.0, 0.71 v3.2.0, 0.73 v3.1.0, 0.78 v2.7.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  411 (  75 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  347 (  32 ~  ;  15  |;  42  &)
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
                      | ~ neq(V,nil)
                      | ? [Y] :
                          ( ssList(Y)
                          & neq(Y,nil)
                          & segmentP(V,Y)
                          & segmentP(U,Y) )
                      | ( ! [Z] :
                            ( ssList(Z)
                           => ( ~ neq(Z,nil)
                              | ~ frontsegP(X,Z)
                              | ~ frontsegP(W,Z) ) )
                        & ( nil != X
                          | nil != W ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
