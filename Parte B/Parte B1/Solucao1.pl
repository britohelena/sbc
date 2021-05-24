:-[search], dynamic goal/1.


/*% -- database:*/
initial(restaurante). /*initial city*/
goal(cliente4). /*destination city*/

/*--- knowledge base:
% road(origem,destino, tempo)*/
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

/*% lucro(cliente, lucro)*/
lucro(cliente1, 5).
lucro(cliente2, 6).
lucro(cliente3, 7).
lucro(cliente4, 16).
lucro(cliente5, 4).

/*LucroCaminho*/
lucroCaminho([],0).
lucroCaminho([X|R],Soma) :- lucro(X,TotalCliente), lucroCaminho(R,TotalCaminho), Soma is TotalCliente + TotalCaminho.

/*travel(partida,chegada,distancia):*/
travel(X,Y,KM):-(road(X,Y,KM);road(Y,X,KM)). /* true if road or symmetrical*/

/*state transition rule s/2: s(clientex,clientey)*/
s(N1,N2):- travel(N1,N2,_). /*link s(O,D,Dist) with s(O,D)*/

/* evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):- 
	travel(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.

/* execute and show a search method result:*/
run(Method):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              eval(S,D),write('distance:'),write(D).
/* write parameter (if any):*/
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

/* execute 3 example searches:*/
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).
