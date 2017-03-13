Dado(/^que esteja na home do site de pesquisa$/) do
    visit "http://www.bing.com/?cc=br"
    sleep 3

end
Quando(/^pesquiso a palavra Uol$/) do
  fill_in("sb_form_q", :with => 'uol')
  click_on('sb_form_go')
end

Quando(/^acesso no site Uol$/) do
 click_link('UOL - O melhor conteúdo')
end

Quando(/^area de Economia$/) do
click_on ('Economia')
sleep 8
end

Quando(/^verifico o valor do dolar$/) do
  find('cotacao')
  sleep 2

end

Então(/^verifico se o dolar é menor que 3.20 (\d+)\.(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
  sleep 3
end

