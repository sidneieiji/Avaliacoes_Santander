Dado(/^que eu esteja na pagina do questionario$/) do
  visit ('https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform')
  @enquete = Enquete_Star_Wars.new
  @enquete.proximo_Enquete.click
  sleep 2
end

Quando(/^preencher corretamente os campos$/) do
  @enquete.nome_Enquete.set Faker::Name.name
  sleep 2
  @enquete.email_Enquete.set Faker::Internet.free_email
  sleep 2
  @enquete.gosta_starWars_sim_Enquete.click
  sleep 2
  @enquete.filme_assistiu_outros_Enquete.click
  @enquete.filme_assistiu_outros_texto_Enquete.set "Todos"
  sleep 2
  @enquete.personagem_Enquete.set Faker::StarWars.character
  sleep 2
  @enquete.assistir_novo_raia_Enquete.click
  sleep 2
  @enquete.assistir_novo_sim_Enquete.click
  sleep 2
  @enquete.enviar_Enquete.click
  sleep 2
end

Entao(/^devo vizualizar mensagem de preenchimento realizado com sucesso$/) do
  @enquete.mensagem_Enquete.assert_text('Obrigado por responder as perguntas! =)')
end