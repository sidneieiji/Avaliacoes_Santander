
Dado(/^que esteja na home buscador$/) do
  visit "http://www.bing.com.br"
end

Quando(/^busco por uol$/) do
  fill_in('sb_form_q', :with => 'uol')
  click_button('sb_form_go')
  
end

Quando(/^acesso o link do site$/) do
  click_link('UOL - O melhor conteúdo')
  
end

Então(/^no site acesso a área de economia$/) do
click_on('Economia')
end 
