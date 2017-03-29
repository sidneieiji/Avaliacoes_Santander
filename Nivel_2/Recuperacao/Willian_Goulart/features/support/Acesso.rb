Dado(/^que eu esteja na tela do formulário$/) do
  @execucao = PG.new
  visit "https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform?fbzx=6581044392218254000"
  @execucao.proxima_pg.click
end


Quando(/^inserir as informações de nome "([^"]*)"$/) do |nome|
  @execucao.name.set nome

end

Quando(/^inserrir as demais informações do Star Wars$/) do
  @execucao.email.set "teste@teste.com.br"
  @execucao.botao_nao.click
  @execucao.ep_0.click
  @execucao.personagem.set Faker::StarWars.character
  @execucao.combobox.click
  sleep 6
  @execucao.Csim.click
  @execucao.fim.click
  sleep 6



end

Entao(/^terei o retorno positivo do site$/) do
  assert_text "Obrigado por responder as perguntas! =)"
end
