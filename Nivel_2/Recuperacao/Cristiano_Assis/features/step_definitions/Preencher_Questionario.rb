Dado(/^que estou na página do filme Star Wars$/) do
  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/formResponse'
  @Preencher_Questionario = Preencher_Questionario.new
  @Preencher_Questionario.botaoproxima.click
  end

Quando(/^informar nome, email, Você gosta de Star Wars\?, Quais filmes você já assistiu\?, Qual seu personagem favorito\? e Você assistirá o novo filme do Star Wars\?$/) do
  @Preencher_Questionario.nome.set Faker::Name.name
  sleep 2
  @Preencher_Questionario.email.set Faker::Internet.email
  sleep 2
  @Preencher_Questionario.gostadofilme.click
  sleep 2
  @Preencher_Questionario.quaisfilmesassistiu.click
  sleep 2
  @Preencher_Questionario.personagemfavorito.set Faker::StarWars.character
  sleep 2
  @Preencher_Questionario.selecionarassistirnovofilme.click
  sleep 2
  @Preencher_Questionario.assistirnovofilme.click
  sleep 2
  end

Quando(/^enviar as informações$/) do
  @Preencher_Questionario.botaoenviar.click
  sleep 2
end

Então(/^o site apresentará o status de envio do questionário$/) do
  have_xpath('/html/body/div/div[2]/div[1]/div[2]/div[2]')
  sleep 2
end