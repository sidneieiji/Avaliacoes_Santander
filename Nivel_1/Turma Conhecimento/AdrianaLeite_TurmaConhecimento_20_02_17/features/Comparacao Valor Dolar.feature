#language: pt
#utf-8

Funcionalidade: Comparação valor do dolar
Eu como investidor financeiro
Quero comparar o valor do dolar
Para saber se é maior ou menor que 3,20

Cenario: Comparar o valor do dolar 
Dado que esteja na home do site de pesquisa
Quando  pesquiso a palavra Uol
E acesso no site Uol 
E area de Economia
E verifico o valor do dolar
Então verifico se o dollar é menor que 3.20 
Se for menor o teste sera encerrado com sucesso
Se for maior o teste deverá quebrar

 