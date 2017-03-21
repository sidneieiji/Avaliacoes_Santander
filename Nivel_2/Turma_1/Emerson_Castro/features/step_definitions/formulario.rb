Dado(/^que eu acesse o formulário$/) do                                              
    visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY'
    @formulario = Formulario.new
    @formulario.botprox.click
  
end                                                                                  
                                                                                     
Quando(/^preencher o nome com "([^"]*)"$/) do |nome|                      
  @formulario.form_nome.set nome
end                                                                                  
                                                                                     
Quando(/^as demais informações$/) do   
 #binding.pry                                   
  @formulario.email.set 'level2@dojo.com'   
  @formulario.perg1.click
  @formulario.perg2m1.click
  @formulario.perg2m2.click
  @formulario.perg2m3.click
  @formulario.perg3.set Faker::StarWars.character
   sleep 2
  @formulario.perg4abrir.click
   #sleep 3
  @formulario.perg4sel.click
  sleep 2
end                                                                                  
                                                                                     
Então(/^os dados devem ser evidados com sucesso$/) do                                
    @formulario.enviar.click
    sleep 1
    assert_text('Obrigado por responder as perguntas! =)')

end                                                                                  
                                                                                     