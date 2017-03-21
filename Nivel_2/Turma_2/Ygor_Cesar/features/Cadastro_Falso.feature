#encoding: utf-8
#language: pt

Funcionalidade: Cadastro Falso
  Eu como usuário que não quero me identificar
  Quero responder o questionário sem utilizar meus dados reais
  Para não ser identificado

  Cenario: Preencher campos com gem Faker
  Dado que estou no site com o questionário aberto
  E envio as perguntas aleatóriamente respondidas
  Então visualizo uma mensagem de agradecimento por responder ao questionário
  