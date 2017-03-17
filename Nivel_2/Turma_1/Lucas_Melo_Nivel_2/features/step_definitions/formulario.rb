Dado(/^que eu acesso o formulario$/) do
  $ins_formulario = Formulario.new
  $ins_formulario.load
end

Quando(/^eu tocar no botão Next$/) do
  $ins_formulario.clicar_next
end

Então(/^será exibido o questionário Star Wars$/) do
  $ins_formulario.valida_acesso_formulario
end

Dado(/^que eu estou no questionário Star Wars$/) do
  $ins_formulario.valida_acesso_formulario
end

Quando(/^eu preencho o formulario com dados fakes$/) do
   $ins_formulario.preenche_formulario_fake
  # $ins_formulario.checks_eps.sample(2).click
end

Quando(/^clicar no botão Submit$/) do
    $ins_formulario.clicar_submit
end

Então(/^será exibida a mensagem uma mensagem de sucesso$/) do
  $ins_formulario.valida_formulario_sucesso
end

Quando(/^eu clico no botão Submite sem o preenchimento dos campos$/) do
  $ins_formulario.clicar_submit
end

Então(/^não deverá ser exibida uma mensagem de sucesso$/) do
  $ins_formulario.valida_formulario_erro
end
