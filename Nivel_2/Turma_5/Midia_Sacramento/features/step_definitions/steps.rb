Dado(/^que eu esteja no site$/) do                                               
    visit "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"
@midiawars = Midiawars.new
    
end                                                                              
                                                                                 
Quando(/^eu preencher todos os dados$/) do                                       
    @midiawars.botao_proxima.click
    sleep 2
    @midiawars.campo_nome.set    Faker::Beer.name
    sleep 2
    @midiawars.campo_email.set 'midia@google.com.br'
    sleep 2
    @midiawars.campo_gosta.click
    sleep 2
    @midiawars.campo_episodio.click
    sleep 2
    @midiawars.campo_favorito.set 'o cara do capacete preto'
    sleep 2
    @midiawars.selecao.click
    sleep 2
    @midiawars.selecao_sim.click
    sleep 2
    @midiawars.botao_enviar.click
    sleep 2
end                                                                              
                                                                                 
Então(/^as informações serão enviadas com sucesso$/) do                          
  assert_text ('Obrigado por responder as perguntas! =)')   
end                                                                              
                                                                                 