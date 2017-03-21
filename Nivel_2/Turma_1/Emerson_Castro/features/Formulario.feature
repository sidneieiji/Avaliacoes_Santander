#encoding: utf-8
#language: pt

Funcionalidade: Formulário
  Eu como usuário
  Quero preencher o formulário
  Para que a informações sejam enviadas com sucesso

@dojo2
Esquema do Cenário: Preencher formulario e enviar
Dado que eu acesse o formulário
Quando preencher o nome com "<nome>"
E as demais informações
Então os dados devem ser evidados com sucesso

Exemplos:
  |nome		|
  |Ana		|
  |Marcia	|
  |Matheus	|
  |André	|