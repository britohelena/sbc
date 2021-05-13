:-dynamic(fact/1),[forward,proof].

/*carnivora*/
solucao(carnivora,entrada,gluten,['\n Bruschetta de tomates,
                   \n A clássica bruschetta de tomates tem um gostinho especial da Itália e é fácil de fazer.
                   \n Perfeita para abrir o apetite antes do jantar.
                  \n OU Sopa de cebola,
                   \n Prato clássico francês.
                   \n Perfeita para ser servida no inverno.']).

solucao(carnivora,entrada,lactose,['\n Tartare de salmão cozido
                   \n Prato originário dos Tártaros, grupo étnico que habita a Rússia e países vizinhos.
                   \n A mistura do toque picante e adocicado da geleia de pimenta com o azedinho do cottage se afinam super bem com o salmão.
                   \n OU Palitos de beringela,
                   \n Super delicioso para acompanhar uma refeição, para substituir as famosas batatas fritas do cheeseburguer ou ainda como uma entrada servida com uma massa ou molho cremoso']).

solucao(carnivora,entrada,nenhuma,['\n Sopa fria de tomate
                   \n É entrada para qualquer celebração, faça sol ou faça chuva, já que fica bem com qualquer prato que venha a seguir
                   \n OU Gaspacho à alentejana,
                   \n O gaspacho à alentejana é um dos pratos típicos da região. Um prato fresco para servir nos dias quentes, uma ideia excelente para começar um almoço de amigos']). 

solucao(carnivora,principal,gluten,['\n Cannelloni Gratinado de Presunto Parma, Pesto e Mussarela de Búfala
                   \n Esta deliciosa receita de Cannelloni sem glúten preparada com a massa de lasanha seca é absolutamente deliciosa.
                 \n OU Lasanha de Bacalhau com Molho Branco,
                   \n O prato perfeito para reunir a família ao redor da mesa: lasanha de bacalhau sem glúten com molho branco!']).

solucao(carnivora,principal,lactose,['\n  Prego no Prato
                   \n Tradicional da cozinha portuguesa, cuja receita é muito prática e simples
                 \n OU Cozido à portuguesa,
                   \n Um cozido tradicional para amantes de carne, este prato inclui frango, carne de vaca, porco e várias salsichas de porco.']).

solucao(carnivora,principal,nenhuma,['\n Francesinha
                   \n Típica da cidade do Porto é uma versão rebelde do Croque Monsieur francês, o que parece justificar o seu nome fantástico sabor.
                 \n OU Caldeirada de peixe,
                   \n Contém vários tipos de peixe e marisco, coberto de tomates e ervas aromáticas. O jantar ideal após um longo dia de praia.']).

solucao(carnivora,sobremesa,gluten,['\n Bolo de ananás com nozes
                   \n Receita fácil e prática.
                   \n Perfeita para servir ao fim de um almoço ou jantar.
                 \n OU Bolo de iogurte sem glúten,
                   \n Super delicioso']).

solucao(carnivora,sobremesa,lactose,['\n Pudim sem lactose
                   \n Receita deliciosamente cremosa.
                 \n OU Brigadeiros sem lactose,
                   \n Fácil de se fazer']).

solucao(carnivora,sobremesa,nenhuma,['\n Bolo de bolacha
                   \n Clássico das sobremesas.
                   \n Perfeita para o final de um almoço de domingo.
                 \n OU Cheesecake de morango.
                   \n Receita deliciosa que nenhum convidado recusa']).
                   
/*vegetariana*/
solucao(vegetariana,entrada,gluten,['\n Pataniscas de Legumes
                   \n Muito fácil de fazer e leva apenas 6 ingredientes.
                   \n Perfeita para abrir o apetite antes de um almoço ou jantar.
                 \n OU Hummus de Abóbora,
                   \n Receita rápida, fácil e deliciosa.
                   \n Perfeito para ser servido no Natal.']).
                   
solucao(vegetariana,entrada,lactose,['\n Queijo vegetariano de amêndoa
                   \n Boa para servir em tempos Natalícios.
                   \n ótimo para barrar.
                 \n OU Hummus de feijão branco picante,
                   \n ótima entrada para qualquer refeição
                   \n Perfeito para quem é alérgico à lactose.']).

solucao(vegetariana,entrada,nenhuma,['\n Pasta de sementes de Girassol
                   \n Saudável, fácil de fazer e súper deliciosa.
                   \n Perfeita para servir com pães, frios e queijos.
                 \n OU Chamuças Vegetarianas,
                   \n Prato tipicamente indiano.
                   \n Perfeito para ser servido aos seus convidados.']).

solucao(vegetariana,principal,gluten,['\n Falafel de forno 
                   \n Bolinhos de grão de bico deliciosos.
                 \n OU Lasanha de courgette vegetariana sem gluten,
                   \n Prato rico em vitaminas e minerais.']).

solucao(vegetariana,principal,lactose,['\n Abóbora recheada com legumes e quinoa
                   \n Clássica e deliciosa.
                 \n OU Caril de lentilhas,
                   \n Prato delicios e nutritivo.']). 

solucao(vegetariana,principal,nenhuma,['\n Massa com vegetais grelhados
                   \n Refeição leve e nutritiva.
                 \n OU Tortellini de espinafres,
                   \n Uma deliciosa refeição para toda a família.']). 

solucao(vegetariana,sobremesa,gluten,['\n Gelatina de frutos silvestres com hortelã
                   \n Sobremesa ideal para o verão.
                 \n OU Gelado de kiwi e melancia com mel,
                   \n Melhor forma de se refrescar num dia quente de verão.']). 

solucao(vegetariana,sobremesa,lactose,['\n Crumble de maçã
                   \n Sobremesa muito saborosa.
                 \n OU Pudim de chia,
                   \n Acompanhado com fruta fresca.']). 

solucao(vegetariana,sobremesa,nenhuma,['\n Mousse de chocolate vegetariana
                   \n Saudável e com todo o sabor da mousse tradicional.
                 \n OU Tarte de abóbora,
                   \n Deliciosa e com sabores natalícios.']).

/*vegan*/

solucao(vegan,entrada,gluten,['\n Poke Bowl com Jaca
                   \n Comida rápida e cheia de sabor que conforta o estômago.
                   \n Vegan e usa trigo sarraceno por isso não se tem de preocupar com o glúten.
                 \n OU Hummus Vermelho (pimento fumado),
                   \n Pode ser utilizado como entrada, servido com legumes crus, acompanhamento de saladas entre outros.
                   \n Típico do médio oriente.']).

solucao(vegan,entrada,lactose,['\n Queijo" fresco vegan de caju
                   \n Perfeito para comer com tostas ou com pão.
                 \n OU Hummus de abóbora,
                   \n Versátil e delicioso.']).

solucao(vegan,entrada,nenhuma,['\n Pan con Tomate
                   \n Simples e delicioso de Barcelona!
                 \n OU Rissóis de Cogumelos e Chouriço de Seitan,
                   \n Saboroso e leve.']). 

solucao(vegan,principal,gluten,['\n Almôndegas vegan
                   \n Feitas com feijões azuqui.
                 \n OU Tabule de Quinoa,
                   \n Prato saudável e prático.']).    

solucao(vegan,principal,lactose,['\n Molho branco vegan sem lactose
                   \n Poucas calorias e saudável.
                 \n OU Torta de brócolos,
                   \n Super nutritiva.']). 

solucao(vegan,principal,nenhuma,['\n Quiche de requeijão com cebolas caramelizadas
                   \n Recheio cremoso com uma casca fina e crocante e com o doce das cebolas.
                 \n OU Sopa de legumes,
                   \n Clássica e deliciosa.']). 

solucao(vegan,sobremesa,gluten,['\n Cookies de chocolate sem glúten
                   \n Com ingredientes muito nutritivos.
                 \n OU Bolo de maçã vegan sem glúten,
                   \n Bolo simples que perfuma a casa inteira.']). 

solucao(vegan,sobremesa,lactose,['\n Gelados de côco sem lactose e açúcar
                   \n Fresco e ideal para tempos quentes.
                 \n OU Pão de banana sem ovos e lactose,
                   \n Super simples mas delicioso.']). 

solucao(vegan,sobremesa,nenhuma,['\n Cookies vegan de coco e canela,
                   \n Perfeito para quando se tem a vontade de algo doce.
                   \n OU Petit Gateau vegan,
                   \n Delicioso e vai impressionar toda a gente!']). 

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

versolucao(X,W,Z):- findall(Y,(solucao(X,W,Z,_)),K), print(K).

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