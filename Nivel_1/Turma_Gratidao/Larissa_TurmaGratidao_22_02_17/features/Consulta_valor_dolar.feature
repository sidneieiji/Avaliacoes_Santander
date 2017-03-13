#language: pt
#utf-8

Funcionalidade: consultar o dolar no site UOL
Eu como usuário da UOL
Quero fazer uma consulta do valor do dolar
Para saber o valor da economia do dolar

Cenario: consultar o dolar no site da UOL
Dado que estou no site da UOL
Quando acessar o menu economia
E localiza o valor do dolar
Então verifico que o valor do dolar é maior que 3,20 e o valor sera exibido na tela