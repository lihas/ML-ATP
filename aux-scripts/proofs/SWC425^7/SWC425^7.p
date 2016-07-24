<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>TPTP Problem File: SWC425^7.p</title>
<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<HR><CENTER>
<H2>TPTP Problem File: SWC425^7.p</H2><A HREF=SeeTPTP?Category=Solutions&Domain=SWC&File=SWC425^7>View Solutions</A>
- <A HREF="http://www.cs.miami.edu/~tptp/cgi-bin/SystemOnTPTP?TPTPProblem=SWC425^7" TARGET="_blank">Solve Problem</A>
</CENTER><HR>
<pre>
%------------------------------------------------------------------------------
% File     : SWC425^7 : TPTP v6.4.0. Released v5.5.0.
% Domain   : Software Creation
% Problem  : Conflict detection of 2 conceptual schemata (e.g. UML-schemata)
% Version  : [Ben12] axioms.
% English  :

% Refs     : [<a href=SeeTPTP?Category=BibTeX&File=BE04>BE04</a>]  Boeva & Ekenberg (2004), A Transition Logic for Schema
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-APM002+1 [Ben12]

% Status   : CounterSatisfiable
% Rating   : 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v6.0.0, 0.67 v5.5.0
% Syntax   : Number of formulae    :   84 (   0 unit;  41 type;  32 defn)
%            Number of atoms       :  324 (  36 equality; 148 variable)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :  214 (   5   ~;   5   |;   9   &; 185   @)
%                                         (   0 &lt;=>;  10  =>;   0  &lt;=;   0 &lt;~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :  184 ( 184   >;   0   *;   0   +;   0  &lt;&lt;)
%            Number of symbols     :   45 (  41   :;   0   =)
%            Number of variables   :   94 (   2 sgn;  37   !;   7   ?;  50   ^)
%                                         (  94   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
% SPC      : TH0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^0.ax>LCL015^0.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL013^5.ax>LCL013^5.ax</a>').
include('Axioms/<a href=SeeTPTP?Category=Axioms&File=LCL015^1.ax>LCL015^1.ax</a>').
%------------------------------------------------------------------------------
<A NAME="r_type"></A>thf(r_type,type,(
    r: mu > $i > $o )).

<A NAME="p_type"></A>thf(p_type,type,(
    p: mu > $i > $o )).

<A NAME="c_type"></A>thf(c_type,type,(
    c: mu )).

<A NAME="existence_of_c_ax"></A>thf(existence_of_c_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ c @ V ) )).

<A NAME="b_type"></A>thf(b_type,type,(
    b: mu )).

<A NAME="existence_of_b_ax"></A>thf(existence_of_b_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ b @ V ) )).

<A NAME="a_type"></A>thf(a_type,type,(
    a: mu )).

<A NAME="existence_of_a_ax"></A>thf(existence_of_a_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ a @ V ) )).

<A NAME="schema1"></A>thf(schema1,axiom,
    ( mvalid @ ( mand @ ( mor @ ( mnot @ ( r @ a ) ) @ ( r @ b ) ) @ ( mand @ ( mequiv @ ( r @ c ) @ ( r @ a ) ) @ ( mand @ ( mimplies @ ( r @ a ) @ ( mdia_s4 @ ( r @ b ) ) ) @ ( mimplies @ ( mnot @ ( r @ a ) ) @ ( mdia_s4 @ ( mand @ ( mnot @ ( r @ b ) ) @ ( mnot @ ( r @ c ) ) ) ) ) ) ) ) )).

<A NAME="schema2"></A>thf(schema2,axiom,
    ( mvalid @ ( mand @ ( mimplies @ ( p @ a ) @ ( p @ b ) ) @ ( mand @ ( mor @ ( p @ c ) @ ( mnot @ ( p @ b ) ) ) @ ( mimplies @ ( mand @ ( p @ a ) @ ( p @ b ) ) @ ( mdia_s4 @ ( mnot @ ( p @ b ) ) ) ) ) ) )).

<A NAME="integration_assertion"></A>thf(integration_assertion,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mequiv @ ( p @ X ) @ ( r @ X ) ) ) )).

<A NAME="con"></A>thf(con,conjecture,
    ( mvalid @ mfalse )).

%------------------------------------------------------------------------------
</pre>
<HR>

</body>
</html>
