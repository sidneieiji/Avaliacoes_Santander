 #language: pt
 #utf-8

 Funcionalidade: Buscar Cotação Dolar
  Eu como cotista
  Quero pesquisar a cotação do dolar
  Para verificar se o valor do dolar é menor que 3,20

   Cenario: Comparar Valor do dolar
    Dado que busco no Google pelo site do UOL
    Quando acesso a pagina de economia
    E busco a cotação do dolar
    Então comparo se o valor é menor que "3,20"
