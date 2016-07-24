<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC066+1.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC066+1.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC066+1>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC066%2B1" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%--------------------------------------------------------------------------
% File     : SWC066+1 : TPTP v6.4.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_id_segment_total1_x_run_ord_max1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=Wei00>Wei00</a>] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [<a href=SeeTPTP?Category=BibTeX&File=FSS98>FSS98</a>] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_total1_x_run_ord_max1 [Wei00]

% Status   : Theorem
% Rating   : 0.80 v6.4.0, 0.77 v6.3.0, 0.75 v6.2.0, 0.84 v6.1.0, 0.90 v6.0.0, 0.87 v5.5.0, 0.93 v5.2.0, 0.90 v5.0.0, 0.92 v4.1.0, 0.96 v3.7.0, 1.00 v3.4.0, 0.95 v3.3.0, 0.93 v3.2.0, 1.00 v2.6.0, 0.83 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  414 (  75 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  348 (  30 ~  ;  15  |;  46  &)
%                                         (  26 &lt;=>; 231 =>;   0 &lt;=)
%                                         (   0 &lt;~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  209 (   0 singleton; 194 !;  15 ?)
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
                      | ~ segmentP(X,W)
                      | ~ totalorderedP(W)
                      | ? [Y] :
                          ( ssList(Y)
                          & neq(W,Y)
                          & segmentP(X,Y)
                          & segmentP(Y,W)
                          & totalorderedP(Y) )
                      | ( ( nil != V
                          | nil = U )
                        & ( ~ neq(V,nil)
                          | ? [Z] :
                              ( ssList(Z)
                              & neq(Z,nil)
                              & segmentP(V,Z)
                              & segmentP(U,Z) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
