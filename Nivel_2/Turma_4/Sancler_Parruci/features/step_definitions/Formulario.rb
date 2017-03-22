 Dado(/^que eu esteja no site$/) do 
 @formulario = Formulario.new 
 visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
 @formulario.botao_proxima.click 
end

Quando(/^eu responder todo o questinorario$/) do
 @formulario.resposta_nome.set Faker::Name.first_name
 @formulario.inserir_email.set "teste@rsi.com.br"
 @formulario.clicar_sim_nao.click
 @formulario.episodio_dois.click
 @formulario.episodio_quatro.click
 @formulario.episodio_sete.click
 @formulario.episodio_outro.set Faker::StarWars.planet
 @formulario.personagem_favorito.set Faker::StarWars.character
 @formulario.opcao_escolher.click
 sleep 5
 @formulario.opcao_sim.click
 sleep 5
 @formulario.botao_enviar.click
end

Então(/^enviar as respontas com sucesso$/) do
 assert_text("Obrigado por responder as perguntas! =)")
 
end