Dado(/^que estou no site da UOL$/) do
visit 'https://www.uol.com.br'

end

Quando(/^acessar o menu economia$/) do
click_link 'Economia'
end

Quando(/^localiza o valor do dolar$/) do
has_content? 'cotacao'
end

Então(/^verifico que o valor do dolar é maior que (\d+),(\d+) e o valor sera exibido na tela$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end	