:-dynamic(fact/1),
[Solucao1,depthfirst, Solucao2, breadthfirst].

menu:- nl,nl , 	write('********************************************************************************************************'), nl,
				write('           Seja Bem vindo! Antes de iniciar, qual o seu nome?'),nl,
				read(X) ,nl,
				write('********************************************************************************************************'), nl,nl,
				write('  Prazer em estar a ajuda-lo/a Sr./a '), write(X) ,nl,nl,nl,
				write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                          Descubra qual/quais a/s melhor/es rota/s para si!                        **'), nl,
				write('**                      Faremos algumas perguntas para o/a ajudar na sua escolha!                     **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				avaliarEscolha(Y).

avaliarEscolha(1):- questao1.
avaliarEscolha(2):- write('Foi um prazer ajuda-lo!'), halt.
avaliarEscolha(other):- write('Introduza uma opcao valida, por favor comece de novo'), menu.

questao1:-	write('********************************************************************************************************'), nl,
			write('**  Qual o máximo de encomendas que pode levar?'), nl,
			write('**'),nl,
			write('**  1 - 1Encomenda'), nl,
			write('**  2 - 2Encomendas'), nl, nl,
			read(A4),
			(
			(A4 == 1), assert(fact(1Encomenda)), questao2;
            (A4 == 2), assert(fact(2Encomendas)), questao4.
            

questao2:-	write('********************************************************************************************************'), nl,
			write('**  Qual o seu destino?'), nl,
			write('**'),nl,
			write('**  1 - Cliente1'), nl,
			write('**  2 - Cliente2'), nl, 
			write('**  3 - Cliente3'),nl,
			write('**  4 - Cliente4'),nl,
			write('**  5 - Cliente5'),nl,
			read(A5),
			(
			(A5 == 1), assert(fact(Cliente1)), resultado;
            (A5 == 2), assert(fact(Cliente2)), questao3;
	    (A5 == 3), assert(fact(Cliente3)), questao3;
	    (A5 == 4), assert(fact(Cliente4)), questao3;
            (A5 == 5), assert(fact(Cliente5)), questao3.
	 
questao4:-	write('********************************************************************************************************'), nl,
			write('**  Quais são os seus destinos?'), nl,
			write('**'),nl,
			write('**  1 - Cliente1 e Cliente2'), nl,
			write('**  2 - Cliente1 e Cliente3'), nl, 
			write('**  3 - Cliente1 e Cliente4'),nl,
			write('**  4 - Cliente1 e Cliente5'),nl,
			write('**  5 - Cliente2 e Cliente3'),nl,
			write('**  6 - Cliente2 e Cliente4'),nl,
			write('**  7 - Cliente2 e Cliente5'),nl,
			write('**  8 - Cliente3 e Cliente4'),nl,
			write('**  9 - Cliente3 e Cliente5'),nl,
			write('**  10 - Cliente4 e Cliente5'),nl,
			read(A5),
			(
			(A5 == 1), assert(fact(Cliente1)), resultado;
            (A5 == 2), assert(fact(Cliente2)), questao3;
	    (A5 == 3), assert(fact(Cliente3)), questao3;
	    (A5 == 4), assert(fact(Cliente4)), questao3;
            (A5 == 5), assert(fact(Cliente5)), questao3.
			
questao3:- 	write('********************************************************************************************************'), nl,
			write('**  Qual dos seguintes metodos de procura prefere?'), nl, 
      		write('**  1 - depthfirst'), nl,
			write('**  2 - iterativedeepening'), nl, 
			write('**  3 - breadthfirst'),nl,
			write('**'),nl,nl,			
			read(A6),
			(
			(A6 == 1), assert(fact(depthfirst)), resultado;
            (A6 == 2), assert(fact(iterativedeepening)), resultado;
            (A6 == 3), assert(fact(breadthfirst)), resultado).
			
			
resultado :- 	write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                         Resultado Obtido                                           **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				result.

resultadowrite(P):-	fact(A6),nl,
					write('     A rota e '),write(S),write(' ***'),nl,
					write('     Tem: '),write(N1),write(' steps'), nl,
					write('     Distancia: '),write(D),nl,
					write('     Lucro: '),write(L),nl,
					write('********************************************************************************************************'),
					retractall(fact(_)).
