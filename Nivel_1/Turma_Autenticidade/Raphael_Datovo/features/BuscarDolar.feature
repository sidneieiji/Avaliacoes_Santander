#language: pt
#utf-8

Funcionalidade: Buscar dolar
  Eu como usuário de dolar
  Quero saber como está a contação do dia para o dolar
  Para saber se o dolar estiver menor que 3,20

@Dolar
Cenario: Buscar o valor do dolar no UOl
  Dado que esteja no site do UOL na area de economia
  Quando buscar a informacao para saber o valor do dolar
  Entao se o dolar for menor que tres e vinte devera retornar sucesso
