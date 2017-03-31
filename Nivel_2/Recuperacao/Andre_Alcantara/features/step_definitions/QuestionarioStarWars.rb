Dado(/^que eu esteja no Site$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
  @questionario = Questionario.new
end

Quando(/^eu responder todas as questoes que são obrigatorias e clicar em enviar$/) do
  @questionario.botão_next.click
  sleep 3
  @questionario.Qual_o_seu_nome.set Faker::GameOfThrones.character
  sleep 3
  @questionario.Qual_o_seu_email.set 'andrealcasantos@gmail.com'
  sleep 3
  @questionario.Você_gosta_de_Star_Wars.click
  sleep 3
  @questionario.Quais_filmes_você_já_assistiu1.click
  sleep 2
  @questionario.Quais_filmes_você_já_assistiu2.click
  sleep 2 
  @questionario.Quais_filmes_você_já_assistiu3.click
  sleep 3
  @questionario.Qual_seu_personagem_favorito.set Faker::StarWars.character
  sleep 3
  @questionario.Você_assistirá_o_novo_filme_do_Star_Wars.click
  sleep 3
  @questionario.Choose_Sim.click
  sleep 3 
  @questionario.botão_submit.click
  sleep 3
end

Então(/^as respostas serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end