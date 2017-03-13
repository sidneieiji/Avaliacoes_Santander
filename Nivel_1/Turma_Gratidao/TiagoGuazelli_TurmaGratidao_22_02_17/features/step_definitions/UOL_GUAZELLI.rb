Dado(/^que esteja na home no site do UOL$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
end

Quando(/^pesquisar por economia e visualizar o dolar$/) do
  click_link 'UOL Economia'
end

Então(/^irei verificar se a cotação é menor que (\d+),(\d+)$/) do |arg1, arg2|
  has_css? 'Dólar com'
end