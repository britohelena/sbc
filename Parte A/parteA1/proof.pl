<<<<<<< HEAD:ParteA/proof.pl
% result( P, Proof) Proof is a proof that P is true
:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 500, xfy, and).
:- op( 800, xfx, <=).
result( P, P)  :-
   fact( P).
result( P, P <= CondProof)  :-
   if Cond then P,
   result( Cond, CondProof).
result( P1 and P2, Proof1 and Proof2)  :-
   result( P1, Proof1),
   result( P2, Proof2).
result( P1 or P2, Proof)  :-
   result( P1, Proof);
=======
/*result( P, Proof) Proof is a proof that P is true*/
:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 500, xfy, and).
:- op( 800, xfx, <=).
result( P, P)  :-
   fact( P).
result( P, P <= CondProof)  :-
   if Cond then P,
   result( Cond, CondProof).
result( P1 and P2, Proof1 and Proof2)  :-
   result( P1, Proof1),
   result( P2, Proof2).
result( P1 or P2, Proof)  :-
   result( P1, Proof);
>>>>>>> 27239ecd03e5cb2597e75f9e25456862f6b76224:Parte A/parteA1/proof.pl
   result( P2, Proof).