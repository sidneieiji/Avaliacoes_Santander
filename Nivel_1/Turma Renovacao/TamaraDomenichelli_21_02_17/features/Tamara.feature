#language: pt
#utf-8

Funcionalidade: 
    Eu navegante do google
    Quero buscar o site da UOL 
    Para obter informações da cotação do dolar

    Cenario: Buscar site de economia da UOL e verificar cotação do dolar
      Dado que esteja na home do site UOL  
      Quando buscar a pagina de economia 
      Então apresenta a cotação do dolar no dia de hoje 
      	