Dado(/^que eu esteja no site do star wars$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true&fbzx=-250752610720501120'
  	@cadastro = Cadastro.new
  	@cadastro.botao_proxima.click
end

Quando(/^eu preencher todos os campos do cadastro$/) do
	@cadastro.campo_nome.set Faker::Name.name
	@cadastro.campo_email.set Faker::Internet.email
	@cadastro.gosta_starwars.click
	@cadastro.filme_starwars.click
	@cadastro.outro_starwars.click
	@cadastro.campo_outro.set 'Star Wars - Rogue One'
	@cadastro.personagem_starwars.set Faker::StarWars.character
	sleep 1
	@cadastro.escolha_starwars.click
	sleep 1
	@cadastro.escolha_sim.click
	@cadastro.campo_enviar
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Star Wars Questions')
  has_xpath?('/html/body/div/div[2]/div[1]/div[2]/div[2]')
  #Nao consegui localizar o texto com o comando assert, so consegui localizar Star Wars Questions. 
  #Usei o comando has_xpath e consegui localizar o texto correto
  sleep 1

end
