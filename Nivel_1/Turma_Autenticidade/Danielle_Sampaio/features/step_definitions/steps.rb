Dado(/^que eu acesso o site do Google$/) do
  visit ('http://www.bing.com.br')
end

Quando(/^Procuro o site do UOL$/) do
  fill_in('q', :with => 'Uol')
  click_button('sb_form_go')
end

Quando(/^entro no site do UOL$/) do
  click_link('UOL - O melhor conteúdo')
end

Então(/^valido que estou no site do UOL$/) do
  expect(page.has_content?('UOL - O melhor conteúdo')).to eq true
end

Então(/^acesso a área de Economia$/) do
  click_link('Economia')
end

Então(/^acesso a área de Cotação$/) do
  sleep 2
  find(:xpath, '//*[@id="header-menu"]/ul/li[2]/a').click
end

Então(/^localizo o valor do dólar$/) do
  
  @dolar = find(:xpath, '//*[@id="conteudo"]/div[1]/section/div[3]/div[1]/div[2]/div[1]/section[1]/table/tbody/tr[1]/td[3]').text
  @texto = 'O valor do dólar no dia de hoje é de R$ '
  puts @texto + @dolar
end

Então(/^comparo se é menor que (\d+),(\d+)$/) do |arg1, arg2|

	 if @dolar = 3.60
	   	puts "Dólar é menor que 3,60 e o programa executou com sucesso"
	 else
	   	puts "Dólar é maior que 3,60 e o programa será encerrado"
	 end
end