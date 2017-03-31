Dado(/^que estou no link do star wars$/) do
  @execucao = Cadastrocampo.new
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true&fbzx=-6547803048607898000'
  @execucao.campo_proxima.click
end

Quando(/^preencher o campo qual o seu nome$/) do
  sleep 2
  @execucao.campo_nome.set 'Lari'
end

Quando(/^o campo qual o seu e\-mail$/) do
  sleep 2
  @execucao.campo_email.set 'teste@teste.com'
  @execucao.campo_não.click
end

Quando(/^o campo quais filmes você assistiu$/) do
  sleep 2
  @execucao.campo_nenhum.click
end

Quando(/^o campo qual seu personagem favorito$/) do
  sleep 2
  @execucao.campo_personagem_favorito.set Faker::StarWars.character
end

Quando(/^o campo você assitirá o novo filme do Star Wars$/) do
  sleep 2
  @execucao.campo_Escolher.click
  sleep 1
  @execucao.campo_escolher_sim.click
  @execucao.campo_Enviar.click
end

Então(/^realizo o envio do cadastro com sucesso$/) do
  assert_text ('Obrigado por responder as perguntas! =)')
  sleep 1
end
