Dado(/^que estou logado no Formulario do Star Wars$/) do
  @teste = Formu.new
  visit('https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true')
  
end

Quando(/^estou acessando a pagina do formulario$/) do
  @teste.botao_Próxima.click
  sleep 2
end

Quando(/^preenche todos as informacao$/) do
  @teste.Campo_Nome.set Faker::GameOfThrones.dragon
  sleep 2
  @teste.Campo_Email.set ('teste@teste.com.br')
  sleep 2
  @teste.Radiobutton_Nao.click
  sleep 2
  @teste.Checkbox_Nenhum.click
  sleep 2
  @teste.Campo_Personagem.set ('Nenhum')
  sleep 2
  @teste.Selecao_Filme.click
  sleep 2
  @teste.Selecao_Nao.click
  sleep 2
  @teste.Botao_Enviar.click
  sleep 3
end

Então(/^realizo o preenchimento do Formulario do Star Wars$/) do
  has_css?('freebirdFormviewerViewResponseConfirmationMessage')
  sleep 3
  end
