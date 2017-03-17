Dado(/^que busco no Google pelo site do UOL$/) do
  visit "https://www.bing.com.br"
  fill_in('sb_form_q', :with => 'UOL')
  click_button('sb_form_go')
  assert_text('UOL')
  click_link('UOL - O melhor conteúdo' ,match: :first)
  sleep 5
end

Quando(/^acesso a pagina de economia$/) do
  find('.menu-uol-estacao.bg2-hover.canal-economia').click
end

Quando(/^busco a cotação do dolar$/) do
  sleep 4
  find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[1]/a').click
  @valor = find(:xpath, '//*[@id="conteudo-principal"]/div[1]/div/div[2]/div[1]/table/tbody/tr/td[2]').text
  puts @valor
end

Então(/^comparo se o valor é menor que "([^"]*)"$/) do |dolar|
  @comparar = dolar
  if @valor < @comparar
    puts true
  else
    puts false
  end
end
