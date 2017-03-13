Dado(/^que estou navegando no site da UOL$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
end

Quando(/^acessar o menu economia$/) do
 click_link 'UOL Economia'
end

Então(/^verifico que o valor do dolar$/) do
 has_css? 'Dólar com'
end