Dado(/^que esteja no site$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
  @respostas = Respostas.new
  sleep 2
end

Quando(/^todas as questoes respondidas$/) do
  @respostas.Proximo.click
  sleep 2
  @respostas.Nome.set 'Tamara Domenichelli'
  sleep 2
  @respostas.Email.set 'tatysdomenichelli@hotmail.com'
  sleep 2
  @respostas.Gosta_de_Star_Wars.click
  sleep 2
  @respostas.Filmes_já_assistiu1.click
  sleep 2
  @respostas.Personagem.set Faker::StarWars.character
  sleep 2
  @respostas.Novo_filme.click
  sleep 2
  @respostas.Sim.click
  sleep 2 
  @respostas.FIM.click
  sleep 2
end

Entao(/^as respostas serao enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end
