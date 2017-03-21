Dado(/^que eu esteja no site$/) do
 	visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
 	@questionario = Questionario.new
end

Quando(/^eu prosseguir para o questionario$/) do
 	@questionario.botao_proxima.click
 	sleep 1
end

Quando(/^preencher todas as informações$/) do
	@questionario.campo_nome.set Faker::Name.name_with_middle
 	sleep 1
 	@questionario.campo_email.set Faker::Internet.email
 	sleep 1
  	@questionario.campo_gosta_star_wars.click
	sleep 1
	@questionario.campo_episodios_ja_assistiu.click
	sleep 1
 	@questionario.campo_personagem_favorito.set Faker::StarWars.character
 	sleep 1
	@questionario.campo_selecao_novo_filme.click
 	sleep 1
	@questionario.campo_selecao_novo_filme_sim.click
 	sleep 1
end

Então(/^as respostas serão enviadas com sucesso$/) do
	@questionario.campo_botao_enviar.click
  	sleep 1
end
 #binding.pry