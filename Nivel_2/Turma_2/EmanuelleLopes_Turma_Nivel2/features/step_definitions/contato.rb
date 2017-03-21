Dado(/^que eu esteja no site$/) do
  visit "https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform?fbzx=1529294936940110600"
  @questionario = Questionario.new

end

Quando(/^eu preencher o questionario$/) do
@questionario.botao_proxima.click
sleep 2
@questionario.qual_nome.set Faker::Name.last_name 
sleep 2
@questionario.qual_email.set 'manu@teste.com.br'  
sleep 2
@questionario.voce_gosta.click
sleep 1
@questionario.qual_episodio.click
sleep 2
@questionario.qual_personagem.set Faker::Name.name_with_middle 
sleep 2
@questionario.proximo_filme.click
sleep 4
@questionario.escolha_nao.click
sleep 3
@questionario.botao_enviar.click
sleep 1

end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end
