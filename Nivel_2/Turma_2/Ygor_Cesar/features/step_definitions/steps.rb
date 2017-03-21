
Dado(/^que estou no site com o questionário aberto$/) do
  @pagemap = Page_Map.new
visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
@pagemap.BotaoNext.click

  @pagemap.CampoNome.set Faker::Name.name
  @pagemap.Email.set Faker::Internet.email
  @pagemap.GostoNao.click
  #binding.pry
  #case Filme 
  #puts (rand*9).to_i
  #if "1" puts @pagemap.FilmeNenhum.click
  #when "2", puts @pagemap.Filme1.click
  #when "3", puts @pagemap.Filme2.click
  #when "4", puts @pagemap.Filme3.click
  #when "5", puts @pagemap.Filme4.click
  #when "6", puts @pagemap.Filme5.click
  #when "7", puts @pagemap.Filme6.click
  #when "8", puts @pagemap.Filme7.click
  #when "9", puts @pagemap.FilmeOutro.click and @pagemap.FilmeOutroTxt.set Faker::StarWars.character
#end
  @pagemap.FilmeOutro.click
  @pagemap.FilmeOutroTxt.set Faker::StarWars.quote
  @pagemap.Personagem.set Faker::StarWars.character
  @pagemap.AssistirBotao.click
  @pagemap.AssistirNao.click
  sleep 1
end

E(/^envio as perguntas aleatóriamente respondidas$/) do
  @pagemap.Enviar.click
end

Então(/^visualizo uma mensagem de agradecimento por responder ao questionário$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end


#Dado(/^que eu esteja no site$/) do
#@pagemap = Page_Map.new
#visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
##find('#DrpDwnMn02label').click
#@pagemap.BotãoNext.click
#binding.pry
#end

#Quando(/^eu preencher o nome com "([^"]*)"$/) do |nome|
#fill_in('Nome', :with => nome)
#@contato.nome_contato.set nome
#end

#Quando(/^preencher as demais informações$/) do
  #fill_in('Email', :with => 'teste@teste.com.br')
#  @contato.email_contato.set 'teste@teste.com.br'
  #fill_in('Assunto', :with => 'assunto teste')
#  @contato.assunto_contato.set 'assunto teste'
#  #fill_in('Mensagem', :with => 'mensagem mensagem')
  
#  @contato.msg_contato.set Faker::ChuckNorris.fact
#  #click_button('CntctFrm1submit')
#  @contato.botao_enviar_contato.click 
#end

#Então(/^as informações serão enviadas com sucesso$/) do
#assert_text('Seus detalhes foram enviagkgkjhgkjhgdos com sucesso!')
#end
