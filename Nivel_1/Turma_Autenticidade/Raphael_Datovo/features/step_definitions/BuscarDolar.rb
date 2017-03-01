Dado(/^que esteja no site do UOL na area de economia$/) do
  visit "http://www.google.com.br"
  sleep 10
  fill_in "lst-ib", :with => "UOL"
  click_link('UOL', match: :first)
  assert_text('UOL')
  click_link('Economia')
end

Quando(/^buscar a informacao do valor do dolar$/) do
  #a partir daqui a minha ideia era entrar na pagina de cambio
  # pegar o valor do dolar e armazenar em uma váriavel
  fill_in "conteudo", :with => "30500"

end

Entao(/^se o dolar for menor que tres e vinte devera retornar sucesso$/) do
  #aqui eu iria efetuar uma validação com IF e ElSE
  #para mostrar que o valor do dolar estária abaixo ou acima
  #de 3,20 conforme pede o exercício.
end
