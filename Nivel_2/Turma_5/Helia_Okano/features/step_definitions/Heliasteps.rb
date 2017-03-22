Dado(/^que eu esteja no site Star Wars Questions$/) do
  visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
@starquestion = Starquestion.new

end

Quando(/^responder o questionario$/) do
  @starquestion.botao_proxima.click
  sleep 1
  @starquestion.nome_usuario.set       Faker::Pokemon.name
  sleep 1
  @starquestion.email_usuario.set  'heliabrasilokano@gmail.com'
  sleep 1
  @starquestion.gosta_starwars.click 
  sleep 1
  @starquestion.filme_assistido.click
  sleep 1
  @starquestion.personagem_star.set 'Mestre Yoda'
  sleep 1
  @starquestion.choose_seta.click
  sleep 1
  @starquestion.botao_sim.click
  sleep 1
  @starquestion.botao_enviar.click
  sleep 1
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text ('Obrigado por responder as perguntas! =)')

end
