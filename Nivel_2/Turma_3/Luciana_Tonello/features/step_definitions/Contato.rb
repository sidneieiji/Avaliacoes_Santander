Dado(/^que eu esteja no site$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true'
  @contato = Contato.new
  @contato.botaoavanca.click
end

Quando(/^eu preencher o nome com Luciana$/) do
  @contato.campo_nome.set Faker::Business
end

Quando(/^preencher as demais informações$/) do
  @contato.campo_email.set 'luciana@teste.com.br'
  @contato.campo_pergunta.click
  @contato.campo_episodio.click
  @contato.campo_person_favorite.set 'Mulher Maravilha'
  @contato.campo_question.click
  @contato.campo_Botao.click
  @contato.campo_BotaoEnviar.click
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')
end