Dado(/^que eu esteja cadastrada$/) do
  @execucao = Campos_Cadastro.new
  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform?fbzx=6581044392218254000'
  @execucao.proximo.click
end

Quando(/^preencher as informações do site Star Wars$/) do
  @execucao.nome.set "Sihame"
  @execucao.email.set "sihame@dojo.com.br"
  @execucao.opcao.click
  @execucao.filmes.click
  @execucao.personagem.set Faker::StarWars.character
  sleep 2
  @execucao.combo.click
  sleep 2
  @execucao.combo_s.click
  @execucao.enviar.click
  sleep 6
end

Então(/^terei uma mensagem de retorno positiva$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end
