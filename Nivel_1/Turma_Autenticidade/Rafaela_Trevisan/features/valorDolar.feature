#language: pt
#utf-8

Funcionalidade: Comparar valor do dólar no site da UOL
Eu como usuário 
Quero acessar o site da UOL
Para comparar o valor do dólar

Cenario: Comparar o valor do dólar no site da UOL
	 
	 Dado que eu esteja no site da UOL
	 Quando verificar a cotação do dólar
	 Então ela deve ser menor de R$3,20