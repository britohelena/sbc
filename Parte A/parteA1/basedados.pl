:-dynamic(fact/1),[forward,proof].

/*carnivora*/
solucao(carnivora,entrada,gluten,['Bruschetta de tomates, tem um gostinho especial da Italia e facil de fazer OU Sopa de cebola, prato classico frances perfeita para o inverno.']).

solucao(carnivora,entrada,lactose,['Tartare de salmao cozido, prato originario dos Tartaros OU Palitos de beringela.']).

solucao(carnivora,entrada,nenhuma,['Sopa fria de tomate, fica bem com qualquer prato que venha a seguir OU Gaspacho a alentejana, um prato fresco para servir nos dias quentes.']). 

solucao(carnivora,principal,gluten,['Cannelloni Gratinado de Presunto Parma, Pesto e Mozzarela de Bufalo OU Lasanha de Bacalhau com Molho Branco.']).

solucao(carnivora,principal,lactose,['Prego no Prato, muito pratico e simples OU Cozido a portuguesa, para amantes de carne.']).

solucao(carnivora,principal,nenhuma,['Francesinha, tipica da cidade do Porto OU Caldeirada de peixe, jantar ideal apos um longo dia de praia.']).

solucao(carnivora,sobremesa,gluten,['Bolo de ananas com nozes, facil e pratica OU Bolo de iogurte sem gluten, super delicioso.']).

solucao(carnivora,sobremesa,lactose,['Pudim sem lactose, deliciosamente cremoso OU Brigadeiros sem lactose.']).

solucao(carnivora,sobremesa,nenhuma,['Bolo de bolacha, classico das sobremesas OU Cheesecake de morango.']).
                   
/*vegetariana*/
solucao(vegetariana,entrada,gluten,['Pataniscas de Legumes OU Hummus de Abobora, perfeito para ser servido no Natal.']).
                   
solucao(vegetariana,entrada,lactose,['Queijo vegetariano de amendoa, otimo para barrar OU Hummus de feijao branco picante, otima entrada para qualquer refeição.']).

solucao(vegetariana,entrada,nenhuma,['Pasta de sementes de Girassol OU Chamuças Vegetarianas, perfeito para ser servido aos seus convidados.']).

solucao(vegetariana,principal,gluten,['Falafel de forno OU Lasanha de courgette vegetariana sem gluten.']).

solucao(vegetariana,principal,lactose,['Abobora recheada com legumes e quinoa OU Caril de lentilhas, prato delicios e nutritivo.']). 

solucao(vegetariana,principal,nenhuma,['Massa com vegetais grelhados OU Tortellini de espinafres.']). 

solucao(vegetariana,sobremesa,gluten,['Gelatina de frutos silvestres com hortela, ideal para o verao OU Gelado de kiwi e melancia com mel.']). 

solucao(vegetariana,sobremesa,lactose,['Crumble de maça OU Pudim de chia, acompanhado com fruta fresca.']). 

solucao(vegetariana,sobremesa,nenhuma,['Mousse de chocolate vegetariana OU Tarte de abobora, deliciosa e com sabores natalicios.']).

/*vegan*/
solucao(vegan,entrada,gluten,['Poke Bowl com Jaca OU Hummus Vermelho (pimento fumado), tipico do medio oriente.']).

solucao(vegan,entrada,lactose,['Queijo fresco vegan de caju OU Hummus de abobora, versatil e delicioso.']).

solucao(vegan,entrada,nenhuma,['Pan con Tomate, simples e delicioso de Barcelona! OU Rissois de Cogumelos e Chouriço de Seitan.']). 

solucao(vegan,principal,gluten,['\n Almondegas vegan, feitas com feijões azuqui OU Tabule de Quinoa.']).    

solucao(vegan,principal,lactose,['Molho branco vegan sem lactose OU Torta de brocolos, super nutritiva.']). 

solucao(vegan,principal,nenhuma,['Quiche de requeijao com cebolas caramelizadas OU Sopa de legumes, classica e deliciosa.']). 

solucao(vegan,sobremesa,gluten,['Cookies de chocolate sem gluten OU Bolo de maça vegan sem gluten.']). 

solucao(vegan,sobremesa,lactose,['Gelados de coco sem lactose e açucar OU Pao de banana sem ovos e lactose, super simples mas delicioso.']). 

solucao(vegan,sobremesa,nenhuma,['Cookies vegan de coco e canela OU Petit Gateau vegan, delicioso e vai impressionar toda a gente!']). 

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

versolucao(X,W,Z):- findall(Y,(solucao(X,W,Z,Y)),K), print(K).

perfil(carnivora1):- versolucao(carnivora,entrada,gluten).
perfil(carnivora2):- versolucao(carnivora,entrada,lactose).
perfil(carnivora3):- versolucao(carnivora,entrada,nenhuma).
perfil(carnivora4):- versolucao(carnivora,principal,gluten).
perfil(carnivora5):- versolucao(carnivora,principal,lactose).
perfil(carnivora6):- versolucao(carnivora,principal,nenhuma).
perfil(carnivora7):- versolucao(carnivora,sobremesa,gluten).
perfil(carnivora8):- versolucao(carnivora,sobremesa,lactose).
perfil(carnivora9):- versolucao(carnivora,sobremesa,nenhuma).
perfil(vegetariana1):- versolucao(vegetariana,entrada,gluten).
perfil(vegetariana2):- versolucao(vegetariana,entrada,lactose).
perfil(vegetariana3):- versolucao(vegetariana,entrada,nenhuma).
perfil(vegetariana4):- versolucao(vegetariana,principal,gluten).
perfil(vegetariana5):- versolucao(vegetariana,principal,lactose).
perfil(vegetariana6):- versolucao(vegetariana,principal,nenhuma).
perfil(vegetariana7):- versolucao(vegetariana,sobremesa,gluten).
perfil(vegetariana8):- versolucao(vegetariana,sobremesa,lactose).
perfil(vegetariana9):- versolucao(vegetariana,sobremesa,nenhuma).
perfil(vegan1):- versolucao(vegan,entrada,gluten).
perfil(vegan2):- versolucao(vegan,entrada,lactose).
perfil(vegan3):- versolucao(vegan,entrada,nenhuma).
perfil(vegan4):- versolucao(vegan,principal,gluten).
perfil(vegan5):- versolucao(vegan,principal,lactose).
perfil(vegan6):- versolucao(vegan,principal,nenhuma).
perfil(vegan7):- versolucao(vegan,sobremesa,gluten).
perfil(vegan8):- versolucao(vegan,sobremesa,lactose).
perfil(vegan9):- versolucao(vegan,sobremesa,nenhuma).
