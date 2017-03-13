Dado(/^acessar o site do uol$/) do
  visit 'https://www.bing.com.br'
  fill_in('q', :with => 'uol')
  click_button 'Pesquisar'
end

Quando(/^entrar na pagina de economia$/) do
  click_link'UOL - O melhor conteúdo'
 click_link'Economia'
 end

Então(/^valida a cotaçao do dolar$/) do
 has_css? 'Dólar com'
end