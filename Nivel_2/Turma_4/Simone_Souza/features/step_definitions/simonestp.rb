Dado(/^que eu esteja no site$/) do
   visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/formResponse'
   @contato = Contato.new
   sleep 3  
end

Quando(/^eu preencher todo o questionario$/) do
    @contato.botao_proxima.click
    sleep 2
    @contato.campo_nome.set Faker::Name.name 
    sleep 2
    @contato.campo_email.set "simone123@gmail.com"
    sleep 1
    @contato.checkbox_sim.click
    sleep 1 
    @contato.checkbox_filme1.click
    sleep 1
    @contato.checkbox_filme7.click
    sleep 1
    @contato.campo_personagem.set "Jabba e Androides"
    sleep 1
    @contato.seletor_escolha.click
    sleep 1
    @contato.opcao_sim.click
    sleep 2
    @contato.botao_enviar.click
    sleep 1

end

Então(/^mostrara a mensagem "([^"]*)"$/) do |arg1|
  assert_text ("Obrigado por responder as perguntas! =)")
end