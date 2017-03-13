Dado(/^que estou no site da UOL$/) do
  visit 'https://br.bing.com'
  fill_in 'q', :with => 'UOl'
  click_button 'Pesquisar'
end
Quando(/^acessar o menu economia$/) do
  click_link 'O melhor conteúdo'
end

Quando(/^localiza o valor do dolar$/) do
  click_link 'Economia'
end
Então(/^validar que o valor do dolar sejá menor que (\d+),(\d+)$/) do |arg1, arg2|
  has_css? 'cotacao'
  sleep (5)
end