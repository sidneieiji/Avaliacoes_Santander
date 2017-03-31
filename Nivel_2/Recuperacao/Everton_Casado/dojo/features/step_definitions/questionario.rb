Dado(/^que ao acessar o site$/) do
  visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
  @Questionario = Questionario.new
end

Quando(/^apresentadas as perguntas responderei elas obrigatoriamente$/) do
	@Questionario.next.click
	sleep 3
	@Questionario.nome.set "Everton"
	sleep 3
    @Questionario.Email.set 'evertonzn@hotmail.com'
    sleep 3
    @Questionario.Star_Wars.click
    sleep 3
    @Questionario.já_assistiu1.click
    sleep 2
    @Questionario.já_assistiu2.click
    sleep 2 
    @Questionario.já_assistiu3.click
    sleep 3
    @Questionario.personagem_favorito.set Faker::StarWars.character
    sleep 3
    @Questionario.novo_filme_do_Star_Wars.click
    sleep 3
    @Questionario.Choose_Sim.click
    sleep 3 
    @Questionario.botão_submit.click
    sleep 3
end

Então(/^respostas enviadas com sucesso$/) do
   assert_text('Obrigado por responder as perguntas! =)')
end