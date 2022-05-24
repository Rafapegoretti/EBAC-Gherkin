#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu esteja na tela do produto

Esquema do Cenário: Escolhendo a cor, o tamanho e a quantidade de produto
Quando seleciono a cor <cor>
E seleciono o tamanho <tamanho>
E coloco a quantidade <quantidade>
E clicando no botão 'comprar'
Então quero poder adicionar o item ao meu carrinho.

Exemplos:
| cor      | tamanho | quantidade |
| "blue"   | "S"     | "10"       |
| "red"    | "M"     | "4"        |
| "orange" | "L"     | "7"        |
| "red"    | "XL"    | "3"        |
| "blue"   | "XS"    | "9"        |


Cenário: Escolhendo a cor, o tamanho e deixando a quantidade de produto em 0
Quando seleciono a cor "Red"
E seleciono o tamanho "XL"
E deixar a quantidade em branco
E clicando no botão 'comprar'
Então quero ser informado que a quantidade é um campo obrigatório para a compra.

Cenário: Escolhendo a cor, e a quantidade do produto mas deixando o tamanho em branco
Quando seleciono a cor "Red"
E coloco a quantidade 3
E não selecionar nenhum tamanho
E clicando no botão 'comprar'
Então quero ser informado que o tamanha é um campo obrigatório para a compra.


Cenário: Escolhendo o tamanho, e a quantidade do produto mas deixando a cor em branco
Quando seleciono o tamanho "XL"
E coloco a quantidade 3
E não seleciono nenhuma cor
E clicando no botão 'comprar'
Então quero ser informado que a cor é um campo obrigatório para a compra.

Cenário: Escolhendo a cor porem não selecionando a o tamanha nem a quantidade.
Quando seleciono a com 'blue'
E não seleciono nenhum tamanho
E não informo a quantidade
E clicando no botão 'comprar'
Então quero ser informado que os itens tamanho e quantidade são obrigatórios para realizar a compra.

Cenário: Escolhendo o tamanho porem não selecionando a cor nem a quantidade.
Quando seleciono o tamanho "S"
E não seleciono nenhuma cor
E não informo a quantidade
E clicando no botão 'comprar'
Então quero ser informado que os itens cor e quantidade são obrigatórios para realizar a compra.

Cenário: Escolhendo a quantidade porem não selecionando a cor nem o tamanho.
Quando seleciono a quantidade de "6"
E não seleciono nenhuma cor
E não seleciono nenhum tamanho
E clicando no botão 'comprar'
Então quero ser informado que os itens cor e quantidade são obrigatórios para realizar a compra.

Cenário: Escolhendo a cor, o tamanho e a quantidade de produto
Quando seleciono a cor "Red"
E seleciono o tamanho "XL"
E coloco a quantidade 15
E clicando no botão 'comprar'
Então devo ser informado qua a quantidade máxima permitida para a compra é de 10 itens.

