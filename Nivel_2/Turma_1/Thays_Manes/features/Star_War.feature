#encoding: utf-8
#language: pt

Funcionalidade: Cadastro
Eu como usuário
Quero acessar a página Star War
Para realizar o meu cadastro

@StarWar
Cenário: Preencher formulario do Star War
  Dado que eu esteja na página da Star War
  Quando eu preencher todas as informações e enviar o Formulario
  Então eu certifico que foi enviado
