Dado(/^que eu esteja na página da Star War$/) do
visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
@Formulario = Formulario.new
@Formulario.proxima.click
end

Quando(/^eu preencher todas as informações e enviar o Formulario$/) do
  @Formulario.nome.set Faker::Name.name
  @Formulario.email.set Faker::Internet.email
  @Formulario.like.click
  @Formulario.episodio.click
  @Formulario.personagem.set Faker::StarWars.character
  @Formulario.check_box.click
  @Formulario.sim.click
  @Formulario.confirma.click
end

Então(/^eu certifico que foi enviado$/) do
    assert_text('Obrigado por responder as perguntas! =)')
end
