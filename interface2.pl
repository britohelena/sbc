:-dynamic(fact/1),
[forward, basedados, proof, baseconhecimento].

menu:- nl,nl , 	write('********************************************************************************************************'), nl,
				write('           Seja Bem vindo! Antes de iniciar, qual o seu nome?'),nl,
				read(X) ,nl,
				write('********************************************************************************************************'), nl,nl,
				write('  Prazer em estar a ajuda-lo/a Sr./a '), write(X) ,nl,nl,nl,
				write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                          Descubra qual/quais o/s melhor/es prato/s para si!                        **'), nl,
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
			write('**  Que tipo de dieta leva?'), nl,
			write('**'),nl,
			write('**  1 - Carnivora'), nl,
			write('**  2 - Vegetariana'), nl,
            write('**  3 - Vegan'), nl,nl,
			read(A1),
			(
			(A1 == 1), assert(fact(carnivora)), questao2;
            (A1 == 2), assert(fact(vegetariana)), questao2;
            (A1 == 3), assert(fact(vegan)), questao2).

questao2:-	write('********************************************************************************************************'), nl,
			write('**  Que tipo de prato vai tomar?'), nl,
			write('**'),nl,
			write('**  1 - entrada'), nl,
			write('**  2 - principal'), nl, 
			write('**  3 - sobremesa'),nl,
			read(A2),
			(
			(A2 == 1), assert(fact(entrada)), questao3;
            (A2 == 2), assert(fact(principal)), questao3;
            (A2 == 3), assert(fact(sobremesa)), questao3).
			
questao3:- 	write('********************************************************************************************************'), nl,
			write('**  Tem alguma alergia? Das seguintes, introduza a correspondente:'), nl, 
      		write('**  1 - gluten'), nl,
			write('**  2 - lactose'), nl, 
			write('**  3 - nenhuma'),nl,
			write('**'),nl,nl,			
			read(A3),
			(
			(A3 == 1), assert(fact(gluten)), resultado;
            (A3 == 2), assert(fact(lactose)), resultado;
            (A3 == 3), assert(fact(nenhuma)), resultado).
			
			
resultado :- 	write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                         Resultado Obtido                                           **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				result.

resultadowrite(P):-	fact(A3),nl,
					write('     O seu perfil e o'),nl,
					write('     *** '),write(P),write(' ***'),nl,nl,
					write('     Pratos aconselhados: '),perfil(P),nl,nl,
					write('********************************************************************************************************'),
					retractall(fact(_)).

