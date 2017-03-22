#language: pt
#utf-8

Funcionalidade: Buscar o valor do Dolar
  Eu como usuario do site uol
  Quero consultar o dolar
  Para ficar informado


  Cenario: Buscar dolar
    Dado que estou na home do site uol
    Quando clicar em economia
    Então deve comparar o valor do dolar se é menor que o solicitado
