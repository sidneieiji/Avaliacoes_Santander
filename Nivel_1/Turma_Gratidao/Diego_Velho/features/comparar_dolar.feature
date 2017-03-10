#language: pt
#utf-8

Funcionalidade: Comparar Cotação Dólar
	Eu como usuário
	Quero acessar o site da Uol
	Para comparar o valor da cotação do dólar

Cenario: Comparar valor da Cotacao do Dolar
	Dado que esteja na area de economia da Uol
	Quando buscar a cotacao do Dolar e comparar
	Entao resultado deve ser menor que 3 e vinte