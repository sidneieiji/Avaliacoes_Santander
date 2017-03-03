Dado(/^que estou no Google$/) do
	visit('https://www.bing.com.br')
end

Quando(/^pesquiso o site do UOL$/) do
  	fill_in('q' ,:with => 'UOL')
  	click_button('sb_form_go')
  	find(:xpath, "//*[@id='b_results']/li[1]/h2/a").click
end

Quando(/^valido que estou no site do UOL$/) do
	page.has_content?('CONTA UOL')
end

Quando(/^acesso a area de econimia$/) do
	find(:xpath, "//*[@id='menuHorizontal']/div/div/ul/li[5]/a").click
	click_link('Dólar Comercial')
end

Quando(/^comparo se o valor esta menor que (\d+),(\d+)$/) do |arg1, arg2|
  $arg1 = '3,60'
  $arg2 = find('#conteudo-principal > div.wrap.principal > div > div.cinza > div.infoTable > table > tbody > tr > td.high').text
  expect($arg2 < $arg1).to be true
end

Entao(/^os gastos estarao dentro do meu orçamento$/) do
  puts 'Óquei'
end