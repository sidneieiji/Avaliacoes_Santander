Dado(/^que eu esteja na home do site da uol$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
end

Quando(/^acessar a pagina de economia$/) do
 click_link'UOL - O melhor conteúdo'
 click_link'Economia'
 sleep = 2
end

Então(/^realizo a cotação do dolar$/) do
 has_css? 'Dólar com'
end