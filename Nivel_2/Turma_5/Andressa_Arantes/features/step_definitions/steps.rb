 Dado(/^que eu esteja no site$/) do
  @questionario = Questionario.new
  visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
   @questionario.botao_questionario.click

end

Quando(/^eu preencher o nome$/) do 
 #fill_in("Nome", :with => nome)
 @questionario.nome_questionario.set Faker::StarWars.character
end

Quando(/^preencher as demais informações$/) do
  #fill_in("Email", :with => "teste@teste.com.br")
  @questionario.email_questionario.set "teste@teste.com.br"
  #fill_in("Assunto", :with => "TESTE")
  @questionario.questionario1_questionario.click
  #fill_in("Mensagem", :with => "Dojo 15")
  @questionario.questionario2_questionario.click

  @questionario.questionario3_questionario.set Faker::StarWars.character

  @questionario.questionario4_questionario.click

  @questionario.resposta4_questionario.click

  @questionario.enviar_questionario.click

end

Então(/^o questionario sera enviado com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
  puts "---------------------------------------------"
  puts "formulário enviado com sucesso !!!"

end
