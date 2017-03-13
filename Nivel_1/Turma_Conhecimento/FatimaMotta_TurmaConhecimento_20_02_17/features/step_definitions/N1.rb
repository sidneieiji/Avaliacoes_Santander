Dado(/^que esteja na home do site UOL$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
  click_link'UOL - O melhor conteúdo' 
end

Quando(/^buscar a pagina da area de Economia$/) do
 click_link'Economia'
end

Então(/^apresentara a cotação do dolar$/) do
 has_css? 'Dólar com'
end
