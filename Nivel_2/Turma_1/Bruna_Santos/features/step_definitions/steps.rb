Dado(/^que eu esteja no site$/) do
  sleep 1
 	visit('https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?chromeless=1&edit_requested=true&fbzx=-5743445698109329000')
 	sleep 1
 #@formulario é o arquivo formulario.rb onde esta a minha classe formulario, é feito uma "copia" usando = Formulario.new para ser usada nesses stepes.
 	@formulario = Formulario.new


end
Quando(/^eu clicar em proximo$/) do
	@formulario.proximo.click
 	sleep 2
end

Quando(/^preencher todas as informacoes$/) do
	#binding.pry
   @formulario.nome.set Faker::StarWars.character
   sleep 1
   @formulario.email.set Faker::Internet.email
   sleep 1
   @formulario.gosta_startwars_sim.select_option
   sleep 1
   @formulario.quaisfilmes_epis1.click
   sleep 1
   @formulario.quaisfilmes_epis7.click
   sleep 1
   @formulario.personagemfavo.set Faker::StarWars.character
   sleep 1
   @formulario.assitirnovofilme.click
   sleep 1
   @formulario.assitirnovofilme_sim.click
   sleep 1
   @formulario.enviar.click
   sleep 1
end

Entao(/^as informacoes serao enviadas com sucesso$/) do
  	sleep 1
 	assert_text('Obrigado por responder as perguntas! =)')
end
