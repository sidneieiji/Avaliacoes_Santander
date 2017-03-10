#language: pt
#utf-8

Funcionalidade: valor do dolar
  Eu como cotista
  Quero buscar a melhor cotação do dolar
  Para comparar se esta abaixo de 3,20

  Cenario: Buscar valor do dolar menor que 3,20
  Dado que esteja no site da UOL
  Quando buscar valor pela cotação
  Então apresentará um leque de opções de cotação e valores
