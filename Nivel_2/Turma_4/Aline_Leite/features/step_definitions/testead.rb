Dado(/^que esteja na home do site do banco$/) do
  visit 'http:/bing.com.br'
  fill_in('sb_form_q', :with => 'Santander')
    find('#sb_form_go').click
    click_link('Pessoa Física - Santander')
  sleep 4
end

Quando(/^buscar o telefone da Ouvidoria$/) do
  find('#ouvidoria').click
  sleep 4
end

Então(/^apresentará os dados de contato da Ouvidoria$/) do
  assert_text('Se não ficar satisfeito com a solução apresentada: 0800 726 0322')
end