
#language: pt
#utf-8

Funcionalidade: Acessar UOL
    Eu usuario da internet
    Quero acessar o da site da UOL
    Para navegar e me atualizar sobre as noticias

    Cenario: Buscar informações sobre esporte
      Dado que esteja na home no site do UOL
      Quando pesquisar por economia e visualizar o dolar      
      Então irei verificar se a cotação é menor que 3,20
