#language: pt
#utf-8

Funcionalidade: consultar o valor do dolar no site UOL
  Eu como usuário do UOL
  Quero verificar a cotaçãodo dolar
  Para saber o se valor é menor que 3,20

Cenario: consultar o dolar no site da UOL
  Dado que estou navegando no site da UOL
  Quando acessar o menu economia
  Então verifico que o valor do dolar 
