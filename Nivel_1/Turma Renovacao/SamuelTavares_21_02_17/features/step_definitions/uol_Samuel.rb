Dado(/^que estou na home da pagina da uol$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
end

Quando(/^digitar por cotação do dolar$/) do
   click_link 'UOL Economia'
end

Então(/^verei que foi pesquisado dos valores$/) do
 has_css? 'Dólar com'
end
