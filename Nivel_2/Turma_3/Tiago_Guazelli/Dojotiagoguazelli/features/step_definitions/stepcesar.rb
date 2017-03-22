Dado(/^que eu esteja no site$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
  @cesarwalker = Cesarwalker.new
end

Quando(/^eu preencher todas as informacoes$/) do
  @cesarwalker.botao_proxima.click
  sleep 2
  @cesarwalker.local_nome.set Faker::Superhero.name
  sleep 2
  @cesarwalker.endereco_email.set 'tiagotr2009@hotmail.com'
  sleep 2
  @cesarwalker.botao_filme.click
  sleep 2
  @cesarwalker.botao_assistiu.click
  sleep 2
  @cesarwalker.botao_personagem.set 'Nenhum'
  sleep 2
  @cesarwalker.botao_escolher.click
  sleep 2 
  @cesarwalker.botao_sim.click
  sleep 2
  @cesarwalker.botao_enviar.click
  sleep 2 


end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')

end
