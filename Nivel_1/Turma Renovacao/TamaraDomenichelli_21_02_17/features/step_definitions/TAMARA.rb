Dado(/^que esteja na home do site UOL$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
  click_link'UOL - O melhor conteúdo' 
end

Quando(/^buscar a pagina de economia$/) do
 click_link'Economia'
end

Então(/^apresenta a cotação do dolar no dia de hoje$/) do
  has_css? 'Dólar com'
end