Dado(/^que eu acesse o Questionário$/) do
  @start = Home.new
  @start.home.load
end

Quando(/^eu preencher o nome com "([^"]*)"$/) do |nome|
#  binding.pry
  @start.proxima.botao.click
  @start.formulario.nome.set nome
end

Quando(/^preencher o email com "([^"]*)"$/) do |email|
  @start.formulario.email.set email
end

Quando(/^preencher os demais campos$/) do
  @start.formulario.radio_button_1
  @start.formulario.checkbox_filmes
  @start.formulario.personagem.set Faker::StarWars.character
  @start.formulario.seta.click
  @start.formulario.radio_button_2

end

Quando(/^clicar no botão de enviar$/) do
  @start.formulario.enviar.click
end

Então(/^devo visualizar uma confirmação de envio$/) do
  expect(page.has_content?('Obrigado por responder as perguntas!')).to be true
  sleep(1)
end
