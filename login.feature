#language: pt

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: 
Dado que eu esteja na tela de login da EBAC-SHOP


Esquema do Cenário: inserindo dados corretos para o acesso.
Quando eu insiro o email "teste@ebac.com"
E insiro a senha ""
Então devo ter ser levado para a página dos meus pedidos.

|usuário           |senha      |
|"teste@ebac.com"  |"senha@321"|
|"rafael@ebac.com" |"senha@123"|
|"joao@ebac.com"   |"senha@456"|
|"claudia@ebac.com"|"senha@644"|


Esquema do Cenário: inserindo dados corretos para o acesso.
Quando eu insiro o email "teste@ebac.com"
E insiro a senha ""
Então devo receber um alerta com a mesagem "Usuário ou senha inválidos"

|usuário                     |senha         |
|""                          |"senha@321"   |
|"rafael@ebac.com"           |""            |
|"naocadastrado@ebac.com"    |"senha@456"   |
|"claudia@ebac.com"          |"senhaErrada" |
