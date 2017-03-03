Dado(/^que esteja na home do site do bing$/) do
    visit "http://www.bing.com/?cc=br"
    sleep 3
end

Quando(/^procuro pela palavra uol$/) do
  fill_in("sb_form_q", :with => 'uol')
  sleep 4
  click_on('sb_form_go')
  sleep 3
end

Quando(/^acesso no site uol$/) do
 click_link('UOL - O melhor conteúdo')
 sleep 2
end

Quando(/^acesso área de economia$/) do
click_link('Economia')
sleep 2
end


Quando(/^verifico o valor do dollar$/) do
  click_link('Dólar com')
  sleep 1

end

Então(/^verifico se o dolllar é menos que (\d+)\.(\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

