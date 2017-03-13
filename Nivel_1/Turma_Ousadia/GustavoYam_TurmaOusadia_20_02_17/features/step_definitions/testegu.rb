Dado(/^que esteja na home do site de pesquisa$/) do
    visit "http://www.bing.com/?cc=br"
    sleep 3

end
Quando(/^pesquiso a palavra uol$/) do
  fill_in("sb_form_q", :with => 'uol')
  click_on('sb_form_go')
end

Quando(/^acesso no site uol$/) do
 click_link('UOL - O melhor conteúdo')
end

Quando(/^area de Economia$/) do
click_on ('Economia')
sleep 3
end

Quando(/^verifico o valor do dollar$/) do
  find('cotacao')
  sleep 2

end

Então(/^verifico se o dollar é menor que 3.20 (\d+)\.(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
  sleep 3
end

