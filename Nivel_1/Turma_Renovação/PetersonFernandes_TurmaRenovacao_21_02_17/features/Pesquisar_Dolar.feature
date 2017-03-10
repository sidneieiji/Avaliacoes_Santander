#language: pt
#utf-8

Funcionalidade: Pesquisar Dolar
Eu como funcionario da RSI
Quero realizar a consulta do dolar atual
Para validar se é menor que 3,20

Cenario: Pesquisar o Dolar Atual
Dado que estou em um site de busca
Quando pesquisa pelo site do UOL
E Acesso a area de economia do UOL
E Pego o valor atual do dolar
Então Verifico se ele é menor que R$ 3,20