Dado(/^que eu esteja no site$/) do
  @home_page = Home.new
  @home_page.load
sleep 3

   @home_page.menu_contato.click
end

Quando(/^eu preencher o nome com Faker$/) do
  @home_page.contato.set (Faker::Name.name_with_middle)
end

Quando(/^preencher as demais informações$/) do
  @home_page.email.set (Faker::Internet.free_email('Sidnei'))
  @home_page.assunto.set (Faker::Bank.name)
  @home_page.mensagem.set (Faker::Business.credit_card_number)
  @home_page.botao_enviar.click
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Seus detalhes foram enviados com sucesso!')

puts'********** TEST FINISHED!!! **************'
  
  assert_no_text('Por favor, preencha os campos obrigatórios.')
end
