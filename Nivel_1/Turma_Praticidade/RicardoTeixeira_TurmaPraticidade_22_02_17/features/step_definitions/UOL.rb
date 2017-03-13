#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^que acesso site UOL pela pesquisa do google$/) do
 visit "https://www.google.com.br"
 fill_in "lst-ib", :with => "UOL"
  click_button("_fZl")
  click_link('UOL - O melhor conteúdo')

end

Quando(/^Aciono economia cotação dólar$/) do
  find("a.menu-uol-estacao.bg2-hover.canal-economia").hover
sleep = 1
   click_link("Dólar")

end

Então(/^apresentará UOL Economia Cotações$/) do
  should have_content('Câmbio')

end

Então(/^Compara menor que (\d+),(\d+) OK, Maior que (\d+),(\d+) Nok$/) do |arg1, arg2, arg3, arg4|
   expect('p.cotacao').to be > "R$ 3,200" 
   
sleep = 1 

end