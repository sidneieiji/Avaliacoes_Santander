#language: pt
#utf-8

Funcionalidade: Cotação dolar
    Eu como usuario da Uol
    Quero entrar na pagina
    Para para saber qual é o valor da cotação do colar

    Cenario: Verificar o valor da cotação do dolar no  UOL
      Dado que estou na home da pagina da uol
      Quando digitar por cotação do dolar
      Então verei que foi pesquisado dos valores
