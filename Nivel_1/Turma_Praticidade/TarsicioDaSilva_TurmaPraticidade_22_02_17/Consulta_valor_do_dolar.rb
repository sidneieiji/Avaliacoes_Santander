Dado(/^que estou navegando no site da UOL$/) do
  visit 'https://www.uol.com.br'
end

Quando(/^acessar o menu economia$/) do
  click_link 'Economia'
end

Então(/^verifico que o valor do dolar$/) do
  has_content? 'cotacao'
end