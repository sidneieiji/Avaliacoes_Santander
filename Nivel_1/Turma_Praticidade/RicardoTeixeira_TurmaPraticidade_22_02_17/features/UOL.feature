
#language: pt
#utf-8

 Funcionalidade: UOL Economia Cotação do Dia

  Eu como Investidor
  Quero Saber O valor do Dólar
  Para Comprar ou Vender 


  Cenario: Comparar valor do dólar

   Dado que acesso site UOL pela pesquisa do google
   Quando Aciono economia cotação dólar
   Então apresentará UOL Economia Cotações
   E Compara menor que 3,20 OK, Maior que 3,20 Nok