Dado(/^que eu esteja no site Star Wars Questions$/) do
  visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
@fatmastar = Fatmastar.new

end

Quando(/^responder o questionario$/) do
  @fatmastar.botao_proxima.click
  sleep 2
  @fatmastar.nome_usuario.set    Faker::Cat.name 
  sleep 1
  @fatmastar.email_usuario.set  'famotta@yahoo.com.br'
  sleep 1
  @fatmastar.gosta_starwars.click 
  sleep 1
  @fatmastar.episodio_1.click
  sleep 1
  @fatmastar.episodio_3.click
  sleep 1
  @fatmastar.personagem_star.set 'Princesa Leia'
  sleep 2
  @fatmastar.choose_seta.click
  sleep 1
  @fatmastar.botao_sim.click
  sleep 1
  @fatmastar.botao_enviar.click
  sleep 1
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text ('Obrigado por responder as perguntas! =)')

end
