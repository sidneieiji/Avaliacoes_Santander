#language: pt
#utf-8

Funcionalidade: Consultar valor do Dólar no site UOL
Eu como investidor 	
Quero consultar a cotação do Dólar
Para comparar o valor e decidir aplicar 

Cenario: Consultar valor do Dólar no site UOL
Dado que acesso o site UOL
Quando buscar a cotação do Dólar na página de economia
Então Efetuarei aplicação financeira se o valor do Dólar for menor que 3,20