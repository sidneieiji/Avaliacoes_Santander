Dado(/^que eu esteja no site de cadastro$/) do
  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform'
     @thaty = Formulario.new
end

Quando(/^informar todos os campos$/) do
  @thaty.botao_proxima.click
  sleep 2
  @thaty.Campo_Nome.set Faker::App.name
  sleep 2
  @thaty.Campo_Email.set 'teste@satander.com.br'
  sleep 2
  @thaty.Opcao_Nao.click
  sleep 2
  @thaty.Checkbox_Nenhum.click
   sleep 2
  @thaty.Campo_Personagem.set 'nenhum'
   sleep 2
  @thaty.Selecao_Filme.click
   sleep 2
  @thaty.opcao_Sim.click
   sleep 2
  @thaty.Botao_Enviar.click
  sleep 2
  end

Entao(/^terei o envio do formulario com sucesso$/) do
 assert_text('Obrigado por responder as perguntas! =)')
 sleep 2
end
