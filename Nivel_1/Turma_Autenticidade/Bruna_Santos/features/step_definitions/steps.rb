Dado(/^que acesso o site do Google$/) do                                     
  visit('http://www.google.com.br')
end                                                                                                                                             
                                                                 
Quando(/^pesquisar por Uol$/) do
  fill_in('q', :with => 'Uol')
  sleep 5
end 

Quando(/^clicar no site do Uol$/) do
	click_link('UOL - O melhor conteúdo')
end

Então(/^confirmo que estou no site correto$/) do
	page.has_content?(' UOL - O melhor conteúdo ')
end


Dado(/^que estou o site do Uol$/) do
  visit('https://www.uol.com.br/')
end

Quando(/^procurar por Economia$/) do
  page.has_content?('Economia')
end

Quando(/^clicar em Economia$/) do
	click_link('Economia')  
end

Então(/^confirmo que estou na pagina Economia$/) do
  page.has_content?('Bolsas') 
end


Dado(/^que estou na pagina Economia$/) do
  visit('https://economia.uol.com.br/')
end

Quando(/^procurar por cambio$/) do
   page.has_content?('Câmbio')
end

Quando(/^localizar Dólar$/) do
 	page.has_content?('Dólar com')
end

Então(/^confirmo que estou na pagina correta$/) do
  page.has_content?('" R$ 3,09 "')
end
                                                                            