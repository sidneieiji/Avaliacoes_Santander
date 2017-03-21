#language: pt
#utf-8

Funcionalidade: Preencher Formulario
    Eu como usuario
    Quero preencher o formulario Start Wars
    Para enviar informacoes solicitados no formulario

@formulario
Cenario: Preencher informacoes de contato com Faker
 	  Dado que eu esteja no site
  	Quando eu clicar em proximo
  	E preencher todas as informacoes
  	Entao as informacoes serao enviadas com sucesso
