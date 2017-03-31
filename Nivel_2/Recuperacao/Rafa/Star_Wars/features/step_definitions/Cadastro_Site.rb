Dado(/^que eu esteja na tela de cadastro$/) do
  @execucao = Contato.new
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true&fbzx=-3482351710809899000'
  @execucao.botao_next.click
  sleep 3
end

Quando(/^inserir as informações de nome$/) do
  @execucao.campo_nome.set Faker::Name.name
end

Quando(/^inserir o email "([^"]*)"$/) do |email|
  @execucao.campo_email.set email
end

Quando(/^inserir a opção sim$/) do
    @execucao.campo_sim.click
end

Quando(/^inserir a quantidade de filmes que assistiu "([^"]*)"$/) do |filme|
  case filme
  when filme = "0"
    @execucao.qtd_filme_0.click
  when filme = "1"
    @execucao.qtd_filme_1.click
  when filme = "2"
    @execucao.qtd_filme_2.click
  when filme = "3"
    @execucao.qtd_filme_3.click
  when filme = "4"
    @execucao.qtd_filme_4.click
  when filme = "5"
    @execucao.qtd_filme_5.click
  when filme = "6"
    @execucao.qtd_filme_6.click
  when filme = "7"
    @execucao.qtd_filme_7.click
  when filme = "Outros"
    @execucao.qtd_filme_Outros.click
    @execucao.campo_outros.set Faker::GameOfThrones.character
  end
  sleep 2
end

Quando(/^insetir qual seu personagem favorito$/) do
  @execucao.campo_personagem.set Faker::StarWars.character
end

Quando(/^insetir se assistiria de novo$/) do
  @execucao.campo_combo.click
  sleep 2
  @execucao.campo_combo_sim.click
  sleep 3
end

Entao(/^terei o envio realizado com sucesso$/) do
  @execucao.botao_submit.click
  assert_text('Obrigado por responder as perguntas! =)')
  sleep 2
end
