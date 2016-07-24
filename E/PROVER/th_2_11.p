fof(th_2_8,axiom,(![A,B]:(cong(A,A,B,B)))).

fof(th_2_5,axiom,(![A,B,C,D]:(cong(A,B,C,D)=>cong(A,B,D,C)))).

fof(th_2_4,axiom,(![A,B,C,D]:(cong(A,B,C,D)=>cong(B,A,C,D)))).

fof(th_2_2,axiom,(![A,B,C,D]:(cong(A,B,C,D)=>cong(C,D,A,B)))).

fof(ax_5,axiom,(![A,B,C,D,A1,B1,C1,D1]:((A!=B&bet(A,B,C)&bet(A1,B1,C1)&cong(A,B,A1,B1)&cong(B,C,B1,C1)&cong(A,D,A1,D1)&cong(B,D,B1,D1))=>cong(C,D,C1,D1)))).

fof(ax_3,axiom,(![A,B,C]:((cong(A,B,C,C))=>(A=B)))).

fof(ax_2,axiom,(![A,B,P,Q,R,S]:((cong(A,B,P,Q)&cong(A,B,R,S))=>cong(P,Q,R,S)))).

fof(ax_1,axiom,(![A,B]:((cong(A,B,B,A))))).

fof(goal, conjecture,(![A,B,C,A1,B1,C1]:((bet(A,B,C)&bet(A1,B1,C1)&cong(A,B,A1,B1)&cong(B,C,B1,C1))=>cong(A,C,A1,C1)))).
