#language: pt
#utf-8

Funcionalidade: Buscar o site Uol pelo google
Eu como usuário 
Entro na busca do Google
Procurar pela palavra Uol
Clico e confirmo que estou na pagina correta

Cenario: Acessar o site do Uol pelo Google
Dado que acesso o site do Google
Quando pesquisar por Uol
E clicar no site do Uol
Então confirmo que estou no site correto

Cenario: Acessar no Menu Economia
Dado que estou o site do Uol
Quando procurar por Economia
E clicar em Economia
Então confirmo que estou na pagina correta

Cenario: Menu Economia
Dado que estou na pagina Economia
Quando procurar por cambio
E localizar Dólar 
Então confirmo o valor de  R$ 3,09 