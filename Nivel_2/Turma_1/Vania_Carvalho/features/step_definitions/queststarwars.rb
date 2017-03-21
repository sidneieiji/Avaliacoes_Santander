Dado(/^que eu esteja no site da pesquisa do filme$/) do
	visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?chromeless=1&edit_requested=true'
	@queststarwars = Queststarwars.new
	@queststarwars.proxima.click
end
Quando(/^responder as perguntas dos episodios que assistir$/) do
	@queststarwars.nome.set Faker::Name.name
	@queststarwars.email.set Faker::Internet.email
	@queststarwars.star_wars.click
	@queststarwars.filme_1.click
	@queststarwars.filme_2.click
	@queststarwars.favorito.set Faker::StarWars.character
	@queststarwars.novo_filme.click
	@queststarwars.sim.click
	sleep 2 
	@queststarwars.enviar.click
end
Então(/^vizualizo a mensagem de envio com sucesso$/) do
   assert_text('Obrigado por responder as perguntas!')
end
