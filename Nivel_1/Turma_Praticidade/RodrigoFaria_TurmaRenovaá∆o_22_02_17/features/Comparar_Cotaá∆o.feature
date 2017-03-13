#language: pt
#utf-8

Funcionalidade: Comparar Cotação
	Eu como usuário do site do UOl
	Quero consultar o valor do dolar
	Para comparar se ele é menor que $3,20

Cenario: consultar Cotação do dolar
	Dado que esteja na home buscador   
	Quando busco por uol 
	E acesso o link do site
	Então no site acesso a área de economia  
