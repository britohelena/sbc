:-dynamic(fact/1),
[depthfirst, Solucao1, Solucao2, breadthfirst].

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
            (A4 == 2), assert(fact(2Encomendas)), questao2.
            

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
            (A5 == 2), assert(fact(Cliente2)), resultado;
	    (A5 == 3), assert(fact(Cliente3)), resultado;
	    (A5 == 4), assert(fact(Cliente4)), resultado;
            (A5 == 5), assert(fact(Cliente5)), resultado).
			
questao3:- 	write('********************************************************************************************************'), nl,
			write('**  Tem alguma alergia? Das seguintes, introduza a correspondente:'), nl, 
      		write('**  1 - gluten'), nl,
			write('**  2 - lactose'), nl, 
			write('**  3 - nenhuma'),nl,
			write('**'),nl,nl,			
			read(A6),
			(
			(A6 == 1), assert(fact(gluten)), resultado;
            (A6 == 2), assert(fact(lactose)), resultado;
            (A6 == 3), assert(fact(nenhuma)), resultado).
			
			
resultado :- 	write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                         Resultado Obtido                                           **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				result.

resultadowrite(P):-	fact(A6),nl,
					write('     O seu perfil e o'),nl,
					write('     *** '),write(P),write(' ***'),nl,nl,
					write('     Rotas possíveis: '),perfil(P),nl,nl,
					write('********************************************************************************************************'),
					retractall(fact(_)).
