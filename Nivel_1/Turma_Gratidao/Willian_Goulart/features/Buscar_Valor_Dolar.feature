#language: pt
#utf-8


Funcionalidade: Buscar valor dolar
  Eu como usuario
  Quero saber informaçõe  s sobre o dolar no UOL
  Para saber se ele está menor que 3,20

  Cenario: Buscar valor dolar
    Dado que esteja na home do site do UOL
    Quando buscar informações sobre o dolar na area de economia
    Então apresentará o valor da cotação do dolar
