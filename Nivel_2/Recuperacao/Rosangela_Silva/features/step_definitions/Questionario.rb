Dado(/^que estou na tela de cadastro$/) do
  @favorito = Sitestar.new
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true&fbzx=-3482351710809899000'
  @favorito.botãoProximo.click
end

Quando(/^preencho as informações$/) do
  @favorito.pergunta1.set 'Rosangela'
  @favorito.pergunta2.set 'rosangela@teste.com.br'
  @favorito.pergunta3sim.click
  @favorito.pergunta4_resposta1.click
  @favorito.pergunta5.set Faker::StarWars.character
  @favorito.pergunta6.click
  sleep 2
  @favorito.pergunta6sim.click
  @favorito.enviar.click
  sleep 2
end

Então(/^recebo a confirmação enviado com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end
