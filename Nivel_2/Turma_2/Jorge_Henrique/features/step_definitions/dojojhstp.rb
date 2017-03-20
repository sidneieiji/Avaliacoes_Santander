Dado(/^que eu esteja no site$/) do
  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform?fbzx=1938301383285792500'
  sleep 2
  @questionario = Questionario.new

end

Quando(/^eu preencher o nome seguido das informações$/) do
 @questionario.botao_proxima.click 
sleep 2
@questionario.campo_nome.set 'Jorge Henrique'
sleep 2
@questionario.campo_email.set 'jorgersi@gmail.com'
sleep 2
@questionario.campo_checksim.click 
sleep 2
@questionario.campo_checkbox1.click
sleep 2
@questionario.campo_personagem.set Faker::StarWars.character
sleep 2
@questionario.seta_choose.click 
sleep 1
@questionario.choose_sim.click
sleep 2
@questionario.opcao_enviar.click
sleep 2

end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')

end