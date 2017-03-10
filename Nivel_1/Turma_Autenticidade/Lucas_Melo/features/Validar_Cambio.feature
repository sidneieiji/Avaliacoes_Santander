#language: pt
#utf-8


Funcionalidade: Validar Taxa Cambial
  Eu como usuário
  Gostaria de acessar a area de economia do Uol
  Para que eu possa validar a taxa cambial apresentada

  Cenario: Acessar area de economia
    Dado que esteja na home do uol
    Quando eu acessar a are de enconomia do uol
    Então será apresentada a taxa cambial do dolar

  Cenario: Validação da taxa cambial
    Dado que eu esteja na area de economia do uol
    Quando a taxa cambial do dolar for menor que "3,20"
    Então o teste será aprovado
