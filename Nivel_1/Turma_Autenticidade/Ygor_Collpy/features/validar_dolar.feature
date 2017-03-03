#language: pt
#utf-8

Funcionalidade: Valor do Dolar
Eu como turista
Quero saber qual o valor do dolar
Para estimar os gastos que terei na minha viagem

	Cenario: Validar valor do Doar
	Dado que estou no Google
	Quando pesquiso o site do UOL
	E valido que estou no site do UOL
	E acesso a area de econimia
	E comparo se o valor esta menor que 3,60
	Entao os gastos estarao dentro do meu orçamento

