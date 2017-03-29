Dado(/^que eu esteja no site$/) do
   visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/formResponse'
   @questions = Questions.new
   sleep 3  
end

Quando(/^eu preencher todo o questionario$/) do
    @questions.botao_proxima.click
    sleep 1
    @questions.campo_nome.set "Paloma"
    sleep 1
    @questions.campo_email.set "paloma.torres@hotmail.com"
    sleep 1
    @questions.checkbox_sim.click
    sleep 1 
    @questions.checkbox_filme5.click
    sleep 1
    @questions.campo_personagem.set Faker::StarWars.character
    sleep 1
    @questions.seletor_escolha.click
    sleep 1
    @questions.opcao_sim.click
    sleep 1
    @questions.botao_enviar.click
    sleep 1
end

Então(/^mostrara a mensagem "([^"]*)"$/) do |arg1|
  assert_text('Obrigado por responder as perguntas! =)')
end