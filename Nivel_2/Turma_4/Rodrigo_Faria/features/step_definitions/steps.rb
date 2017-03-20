Dado(/^que eu esteja no site do questionário$/) do
  @StarWars = StarWars.new
  visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
  @StarWars.botao_proximo.click
end

Quando(/^respondo todas a questões corretamente$/) do
  @StarWars.nome_questionario.set Faker::Name.first_name
  @StarWars.email_questionario.set "teste@teste.com.br"
  @StarWars.gosta_star_wars.click
  @StarWars.check_filmes_1.click
  @StarWars.check_filmes_2.click
  @StarWars.check_filmes_3.click
  @StarWars.personagem_favorito.set "Luke Skywalker"
  @StarWars.assistira_proximo.click
  @StarWars.assistira_proximo_s.click
  sleep(4)
end

Quando(/^envio o questionário$/) do
  @StarWars.botao_enviar_contato.click
end

Então(/^o questionário é enviado com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
  sleep(4)
end