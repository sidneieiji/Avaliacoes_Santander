Dado(/^que esteja no site de busca$/) do
  visit "http://www.bing.com/?cc=br"
end

Quando(/^buscar site do uol$/) do
  fill_in "q", :with => "uol"
  click_button('Pesquisar')
  click_link('UOL - O melhor conteúdo')
  assert_text('UOL - O melhor conteúdo')
 	end

Quando(/^acessar uol economia$/) do
  click_link('Economia')
	end

Então(/^validar se o valor do dolar é maior que 3,20$/) do
	puts 'tentei, mas nao consegui fazer o IF para comparar o valor do dolar'
end