Dado(/^que esteja na area de economia da Uol$/) do
  visit "http://www.bing.com"
  fill_in "q", :with => "Uol"
  click_button('sb_form_go')
  click_link('UOL - O melhor conteúdo')
  click_link('Economia')
  end

Quando(/^buscar a cotacao do Dolar e comparar$/) do
   find(:css, '#header-menu > ul > li:nth-child(2) > a').click
   sleep 5
 end

Entao(/^resultado deve ser menor que (\d+)$/) do
end
