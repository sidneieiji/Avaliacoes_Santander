Dado(/^que estou no site da UOL$/) do

 visit 'https://br.bing.com'
  fill_in 'q', :with => 'UOl'
  click_button 'Pesquisar'

end

Quando(/^acessar o menu economia$/) do
click_link 'O melhor conteúdo'
click_link 'Economia'
end

Quando(/^localiza o valor do dolar$/) do
has_content? 'cotacao'
end

Então(/^verifico que o valor do dolar é maior que (\d+),(\d+) e o valor sera exibido na tela$/) do |arg1, arg2|
  has_content? 'cotacao'
end	