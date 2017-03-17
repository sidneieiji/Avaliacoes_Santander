#language: pt
#utf-8

Funcionalidade: Dojo LVL 2

@dojo2
Esquema do Cenario: Responder o Questionario

Dado que eu acesse o Questionário
Quando eu preencher o nome com "<nome>"
E preencher o email com "<email>"
E preencher os demais campos
E clicar no botão de enviar
Então devo visualizar uma confirmação de envio

Exemplos:
	|nome					|email						|
	|Rodrigo Candido Costa	|roccosta@inmetrics.com.br	|
	|Joaquim Souza			|veio.quim@inmetrics.com.br	|