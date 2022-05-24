#language: pt

Funcionalidade: Tela de cadastro - Checkout

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu esteja na tela de checkout

Cenário: Preenchendo todos os campos do formulário
Quando eu preencho o compo nome com "Rosa"
E preencho o campo sobrenome com "Fernandes"
E preencho o campo Nome da empresa com "EBAC Online"
E preencho o campo país com "Brasil"
E preencho o campo Endereço com "Quadra QR 122 Conjunto 13 "
E preencho o campo Cidade com "Brasília"
E preencho o campo País com "Brasil"
E preencho o campo CEP com "72304-213"
E preencho o campo Telefone com "(61) 99760-5461"
E preencho o campo Endereço de Emil com "rosa-fernandes90@mtc.eng.br"
Então devo receber poder finalizar a minha compra com sucesso.

Cenário: Deixando campos em branco
Quando preencho o campo Nome com "Fernandes"
E preencho o campo Sobrenome com "Fernandes"
E preencho o campo Nome da empresa com "EBAC Online"
E preencho o campo país com "Brasil"
E preencho o campo Endereço com "Quadra QR 122 Conjunto 13 "
E preencho o campo Cidade com "Brasília"
E preencho o campo País com "Brasil"
E preencho o campo CEP com "72304-213"
E preencho o campo Telefone com "(61) 99760-5461"
E preencho o campo Endereço de Emil com "rosa-fernandes90@mtc.eng.br"
Então devo receber a mesagem <mensagem>

| Nome   | Sobrenome | Nome da Empresa | Endereço                   | Cidade     | CEP       | Telefone       | Endereco de Email | mensagem                                      |
| ""     | "Souza"   | "EBAC"          | "Voluntários da pátria 49" | "Curitiba" | "8354321" | "41 999999999" | "teste@teste.com" | "Campo Nome deve ser preenchido"              |
| "João" | ""        | "EBAC"          | "Voluntários da pátria 49" | "Curitiba" | "8354321" | "41 999999999" | "teste@teste.com" | "Campo Sobrenome deve ser preenchido"         |
| "João" | "Souza"   | ""              | "Voluntários da pátria 49" | "Curitiba" | "8354321" | "41 999999999" | "teste@teste.com" | "Campo Nome da Empresa deve ser preenchido"   |
| "João" | "Souza"   | "EBAC"          | ""                         | "Curitiba" | "8354321" | "41 999999999" | "teste@teste.com" | "Campo Endereço deve ser preenchido"          |
| "João" | "Souza"   | "EBAC"          | "Voluntários da pátria 49" | ""         | "8354321" | "41 999999999" | "teste@teste.com" | "Campo Cidade deve ser preenchido"            |
| "João" | "Souza"   | "EBAC"          | "Voluntários da pátria 49" | "Curitiba" | ""        | "41 999999999" | "teste@teste.com" | "Campo CEP deve ser preenchido"               |
| "João" | "Souza"   | "EBAC"          | "Voluntários da pátria 49" | "Curitiba" | "8354321" | ""             | "teste@teste.com" | "Campo Telefone deve ser preenchido"          |
| "João" | "Souza"   | "EBAC"          | "Voluntários da pátria 49" | "Curitiba" | "8354321" | "41 999999999" | ""                | "Campo Endereço de Email deve ser preenchido" |