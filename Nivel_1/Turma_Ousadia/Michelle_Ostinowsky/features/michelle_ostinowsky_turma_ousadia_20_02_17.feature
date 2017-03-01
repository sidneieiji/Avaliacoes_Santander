#language: pt
#utf-8

Funcionalidade: Comparar Dólar
	Eu como usuario
	Quero localizar na economia
	Para comparar valor do Dólar

	Cenário: Buscar e comparar página do Dólar
		Dado que esteja no site de busca bing
		Quando pesquiso pelo termo uol
		E acesso o site uol
		E confirmar que estou no site uol
		E acessar a pagina de economia
		E localizar o valor do Dólar
		Então comparar se o valor do Dólar é maior ou menor que
