/*prato(nome,dieta,qualidade,custo,tipo,alergias(1,2,3))*/

prato('Chicken McNuggets',carnivora,fastfood,baixo,principal,[lactose,nenhuma]).




-----Exemplo Prof Portela------ 
membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

verfilme(X,W,Z):- findall(Y,(filme(Y,H,_,U,_,_,_,W), H>=Z, membro(X,U)),K), print(K).

verfilmeator(X):- findall(Y,(filme(Y,_,_,_,_,_,U,_), membro(X,U)),K), print(K).

perfil(1,Z):- verfilme(terror,maior18,Z).
perfil(2,Z):- verfilme(terror,menor18,Z).
perfil(3,Z):- verfilme(comedia,maior18,Z).
perfil(4,Z):- verfilme(comedia,menor18,Z).
perfil(5,Z):- verfilme(crime,maior18,Z).
perfil(6,Z):- verfilme(crime,menor18,Z).
perfil(7,Z):- verfilme(drama,maior18,Z).
perfil(8,Z):- verfilme(drama,menor18,Z).
perfil(9,Z):- verfilme(thriller,maior18,Z).
perfil(10,Z):- verfilme(thriller,menor18,Z).
perfil(11,Z):- verfilme(biografia,maior18,Z).
perfil(12,Z):- verfilme(biografia,menor18,Z).
perfil(13,Z):- verfilme(sci-fi,maior18,Z).
perfil(14,Z):- verfilme(sci-fi,menor18,Z).
perfil(15,Z):- verfilme(fantasia,maior18,Z).
perfil(16,Z):- verfilme(fantasia,menor18,Z).
perfil(17,Z):- verfilme(familia,maior18,Z).
perfil(18,Z):- verfilme(familia,menor18,Z).
perfil(19,Z):- verfilme(misterio,maior18,Z).
perfil(20,Z):- verfilme(misterio,menor18,Z).
perfil(21,Z):- verfilme(animacao,maior18,Z).
perfil(22,Z):- verfilme(animacao,menor18,Z).
perfil(23,Z):- verfilme(guerra,maior18,Z).
perfil(24,Z):- verfilme(guerra,menor18,Z).
perfil(25,Z):- verfilme(aventura,maior18,Z).
perfil(26,Z):- verfilme(aventura,menor18,Z).
perfil(27,Z):- verfilme(acao,maior18,Z).
perfil(28,Z):- verfilme(acao,menor18,Z).
perfil(29,Z):- verfilme(musica,maior18,Z).
perfil(30,Z):- verfilme(musica,menor18,Z).
perfil(31,Z):- verfilme(historia,maior18,Z).
perfil(32,Z):- verfilme(historia,menor18,Z).
perfil(33,Z):- verfilme(romance,maior18,Z).
perfil(34,Z):- verfilme(romance,menor18,Z).
perfil(35,Z):- verfilmeator(Z).