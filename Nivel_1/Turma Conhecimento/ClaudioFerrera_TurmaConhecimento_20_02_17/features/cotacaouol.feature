#language:pt
#utf-8

Funcionalidade: Buscar Cotacao Uol
	Eu como usuario
	Quero procurar a cotacao do dolar no site do uol
	Para Saber se e maior que 3,20.

Cenario:  Buscar Cotacao Uol
	Dado que esteja no site de busca
	Quando buscar site do uol
	E acessar uol economia
	Então validar se o valor do dolar é maior que 3,20