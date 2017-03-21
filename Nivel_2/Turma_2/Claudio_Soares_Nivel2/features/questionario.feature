#encoding: utf-8
#language: pt

Funcionalidade: Questionario
  Eu como usuário
  Quero acessar o site do Star Wars Questions
  Para enviar respostas do questionario

@quest1
Cenário: Preencher informações do questionario
  Dado que eu esteja no site
  Quando eu prosseguir para o questionario
  E preencher todas as informações
  Então as respostas serão enviadas com sucesso