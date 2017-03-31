Dado(/^que eu acesse o site$/) do
    	visit('https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?chromeless=1&edit_requested=true&fbzx=-5743445698109329000')
 	sleep 2
 	@preencher = Preencher.new
end

Quando(/^eu clicar em Next$/) do
  	@preencher.proximo.click
 	sleep 3
end

Quando(/^inserir todas informações$/) do
  	
   @preencher.nome.set Faker::StarWars.character
   sleep 1
   @preencher.email.set Faker::Internet.email 
   sleep 1
   @preencher.gostar_sim.click
   sleep 1
   @preencher.filmes_assistidos_ep_3.click
   sleep 1
   @preencher.filmes_assistidos_ep_6.click
   sleep 1
   @preencher.personagem_favorito.set Faker::StarWars.character
   sleep 1
   @preencher.assitir_novo_filme.click
   sleep 1
   @preencher.assistira_novo_filme_sim.click
   sleep 1
   #binding.pry
   @preencher.enviar.click
   sleep 1
end

Entao(/^enviarei o formulario com sucesso$/) do
  sleep 1
 	assert_text('Obrigado por responder as perguntas! =)')
end