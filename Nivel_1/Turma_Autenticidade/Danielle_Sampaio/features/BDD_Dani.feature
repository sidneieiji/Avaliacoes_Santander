#enconding: utf-8
#language: pt

Funcionalidade: Comparar Valor Dólar
  Eu como usuário
  Acesso o site do Google
  Procuro o site do UOL
  E conformo que estou no site do UOL

Cenário: Acessar o site do UOL, através do Google e comparar o valor do Dólar, na área de Economia

  Dado que eu acesso o site do Google
  Quando Procuro o site do UOL
  E entro no site do UOL
  Então valido que estou no site do UOL
  E acesso a área de Economia
  E acesso a área de Cotação
  Então localizo o valor do dólar
  E comparo se é menor que 3,60
