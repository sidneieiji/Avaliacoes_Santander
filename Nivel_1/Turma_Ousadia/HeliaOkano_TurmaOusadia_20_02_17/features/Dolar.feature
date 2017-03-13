#language: pt
#utf-8

Funcionalidade: Verificar cotaçao do dolar
    Eu como turista
    Quero saber o valor da cotaçao do dolar
    Para validar a cotaçao do dolar 

    Cenario: verificar cotaçao do dolar
      Dado acessar o site do uol 
      Quando entrar na pagina de economia
      Então  valida a cotaçao do dolar
      	