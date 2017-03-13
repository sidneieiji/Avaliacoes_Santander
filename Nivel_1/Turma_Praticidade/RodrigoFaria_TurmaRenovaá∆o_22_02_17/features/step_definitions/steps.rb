
Dado(/^que esteja na home do site do banco$/) do
  visit "http://www.santander.com.br"
  time 5
end

Quando(/^buscar uma agência pelo CEP$/) do
  fill_in "refCep", :with => ""
end

Então(/^apresentará as agências disponíveis$/) do
  pending # Write code here that turns the phrase above into concrete actions
end