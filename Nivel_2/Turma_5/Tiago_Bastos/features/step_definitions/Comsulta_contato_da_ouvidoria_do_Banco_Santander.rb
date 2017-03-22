Dado(/^que acesso um site de busca$/) do
  visit('https://www.bing.com/?cc=br')
  fill_in('q', :with => 'Santander')
  find('#sb_form_go').click
  end

Quando(/^acesso o site do Banco Santander$/) do
  click_link('Pessoa Física - Santander')
end

Quando(/^consulto o contato da ouvidoria do Banco Santander$/) do
 find('#ouvidoria').click
end

Então(/^obtenho o contato da ouvidoria do Banco Santander$/) do
  assert_text(' auditiva e de fala no 0800 771 0301.')
end
