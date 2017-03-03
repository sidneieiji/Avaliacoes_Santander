#linguage: pt
#utf-8

Funcionalidade: Dolar Economia
	Eu como usuario
	Quero localizar na economia
	Para comparar valor do Dólar

	Cenário: Buscar e comparar página do Dólar
		Dado que esteja no site do uol
		Quando pesquiso por economia cotaçoes dolar
		Entao apresenta pagina Cambio 
		E o valor do dolar é comparado menor que 3,20 ou maior
		

	
		
		
