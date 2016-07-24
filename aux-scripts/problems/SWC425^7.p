%------------------------------------------------------------------------------
% File     : SWC425^7 : TPTP v6.4.0. Released v5.5.0.
% Domain   : Software Creation
% Problem  : Conflict detection of 2 conceptual schemata (e.g. UML-schemata)
% Version  : [Ben12] axioms.
% English  :

% Refs     : [BE04]  Boeva & Ekenberg (2004), A Transition Logic for Schema
%          : [Ben12] Benzmueller (2012), Email to Geoff Sutcliffe
% Source   : [Ben12]
% Names    : s4-cumul-APM002+1 [Ben12]

% Status   : CounterSatisfiable
% Rating   : 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v6.0.0, 0.67 v5.5.0
% Syntax   : Number of formulae    :   84 (   0 unit;  41 type;  32 defn)
%            Number of atoms       :  324 (  36 equality; 148 variable)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :  214 (   5   ~;   5   |;   9   &; 185   @)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :  184 ( 184   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   45 (  41   :;   0   =)
%            Number of variables   :   94 (   2 sgn;  37   !;   7   ?;  50   ^)
%                                         (  94   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
% SPC      : TH0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include axioms for Modal logic S4 under cumulative domains
include('Axioms/LCL015^0.ax').
include('Axioms/LCL013^5.ax').
include('Axioms/LCL015^1.ax').
%------------------------------------------------------------------------------
thf(r_type,type,(
    r: mu > $i > $o )).

thf(p_type,type,(
    p: mu > $i > $o )).

thf(c_type,type,(
    c: mu )).

thf(existence_of_c_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ c @ V ) )).

thf(b_type,type,(
    b: mu )).

thf(existence_of_b_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ b @ V ) )).

thf(a_type,type,(
    a: mu )).

thf(existence_of_a_ax,axiom,(
    ! [V: $i] :
      ( exists_in_world @ a @ V ) )).

thf(schema1,axiom,
    ( mvalid @ ( mand @ ( mor @ ( mnot @ ( r @ a ) ) @ ( r @ b ) ) @ ( mand @ ( mequiv @ ( r @ c ) @ ( r @ a ) ) @ ( mand @ ( mimplies @ ( r @ a ) @ ( mdia_s4 @ ( r @ b ) ) ) @ ( mimplies @ ( mnot @ ( r @ a ) ) @ ( mdia_s4 @ ( mand @ ( mnot @ ( r @ b ) ) @ ( mnot @ ( r @ c ) ) ) ) ) ) ) ) )).

thf(schema2,axiom,
    ( mvalid @ ( mand @ ( mimplies @ ( p @ a ) @ ( p @ b ) ) @ ( mand @ ( mor @ ( p @ c ) @ ( mnot @ ( p @ b ) ) ) @ ( mimplies @ ( mand @ ( p @ a ) @ ( p @ b ) ) @ ( mdia_s4 @ ( mnot @ ( p @ b ) ) ) ) ) ) )).

thf(integration_assertion,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mequiv @ ( p @ X ) @ ( r @ X ) ) ) )).

thf(con,conjecture,
    ( mvalid @ mfalse )).

%------------------------------------------------------------------------------
