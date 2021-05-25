:-[search]
:- dynamic (goal/1).

% -- database:
%   state representation: S, where S is a list with the full path followed by the person 
initial([restaurante]). % initial city

goal(X):- member(guimaraes,X),member(famalicao,X). % destination city

road(restaurante,cliente1,5).
road(restaurante,cliente4,7).
road(cliente1,cliente4,5).
road(cliente1,cliente2,5).
road(cliente1,cliente5,5).
road(cliente4,cliente2,2).
road(cliente2,cliente5,2).
road(cliente2,cliente3,3).
road(cliente5,cliente3,5).
road(cliente3,cliente4,4).

%lucro(cliente, lucro)
lucro(cliente1, 5).
lucro(cliente2, 6).
lucro(cliente3, 7).
lucro(cliente4, 16).
lucro(cliente5, 4).

% travel(City1,City2,distance):
travel(X,Y,KM):-(road(X,Y,KM);road(Y,X,KM)). % true if road or symmetrical

% state transition rule s/2: s(City1,City2)
s(L1,L2):- last(L1,N1),travel(N1,N2,_),append(L1,[N2],L2). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):- 
	travel(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.

% execute and show a search method result:
run(Method):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              last(S,LS),
              eval(LS,D),write('distance:'),write(D).
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).
