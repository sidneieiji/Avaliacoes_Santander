Dado(/^que eu esteja no site$/) do
	sleep 1
 	visit('https://vtrmartinez.wixsite.com/dojo')   
 	sleep 10
 	@contato = Contato.new
 	@contato.contato.click
end

Quando(/^eu preencher o nome com "([^"]*)"$/) do |nome|
	sleep 1
	@contato.campo_nome.set nome

end


Quando(/^preencher as demais informações$/) do
	sleep 1
	@contato.email.set 'dojo@dojo.com.br'
 	sleep 1
    @contato.assunto.set Faker::StarWars.character
 	sleep 5
    @contato.mensagem.set 'uhuuul'
end

Então(/^as informações serão enviadas com sucesso$/) do
	sleep 1
 	@contato.confirmar.click
 	assert_text('Seus detalhes foram enviados com sucesso!')
end