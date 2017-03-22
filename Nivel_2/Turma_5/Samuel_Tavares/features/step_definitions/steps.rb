Dado(/^que estou na pagina do questionario$/) do
  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/formResponse'
  @samueljedi = Samueljedi.new

end

Quando(/^inserir minhas respostas$/) do
@samueljedi.iniciar.click 
sleep 1
@samueljedi.nome.set Faker::Name.name
sleep 1
@samueljedi.email.set 'samuel.tavares780@gmail.com'
sleep 1
@samueljedi.selecao_gosto.click
sleep 1
@samueljedi.episodio1.click
sleep 1
@samueljedi.episodio2.click
sleep 1
@samueljedi.episodio5.click
sleep 1
@samueljedi.personagem.set Faker::StarWars.character
sleep 1
@samueljedi.novo_filme.click
sleep 1
@samueljedi.novo_filme_escolher.click
sleep 1
@samueljedi.enviar.click
sleep 2
end

Então(/^verei status de conclusão$/) do
  assert_text ('Obrigado por responder as perguntas! =)')
end

 