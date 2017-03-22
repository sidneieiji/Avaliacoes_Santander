#encoding: utf-8
#language: pt

Funcionalidade: Formulario
  Eu como usuário
  Quero acessar o site star wars
  Para cadastrar informações

@run
Cenário: Preencher informações do formulario
  Dado que eu esteja no site
  Quando preencher todas as informações do formulário
  Então o sistema exibe mensagem de envio com sucesso