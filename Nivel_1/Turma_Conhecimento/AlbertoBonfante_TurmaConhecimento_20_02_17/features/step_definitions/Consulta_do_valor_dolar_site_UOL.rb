Dado(/^que estou logado no site da UOL$/) do
  visit 'https://www.uol.com.br/'
end

Quando(/^acessar a pagina de economia$/) do
  click_link 'Economia'
end

Então(/^valido a cotação do dolar$/) do
  has_css? 'cotacao'

end