#encoding: utf-8
#language: pt

Funcionalidade: starwar
  Eu como usuário da internet
  Quero acessar o site do starwar
  Para enviar informações sobre o filme

@teste1
Cenário: Preencher informações do questionario
  Dado que eu esteja no site
  Quando eu preencher o nome com Luciana
  E preencher as demais informações
  Então as informações serão enviadas com sucesso


