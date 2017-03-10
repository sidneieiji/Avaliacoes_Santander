Dado(/^que estou em um site de busca$/) do
  visit 'https://www.google.com.br/'  
end

Quando(/^pesquisa pelo site do UOL$/) do
  fill_in('lst-ib', :with => 'UOL')
  click_link 'UOL - O melhor conteúdo'
end

Quando(/^Acesso a area de economia do UOL$/) do
   sleep 5
   if assert_text('UOL - O melhor conteúdo') #Confirma se esta no site do uol
   		click_link 'Economia'
   end

end

Quando(/^Pego o valor atual do dolar$/) do
   click_link 'Dólar com'   

  dolarAtual = find(:xpath, '//*[@id="conteudo-principal"]/div[1]/div/div[2]/div[1]/table/tbody/tr/td[3]')
  $dolarAtual = dolarAtual.text.sub(',', '.').to_f

end


#Então(/^Verifico se ele é menor que $/) do
Então(/^Verifico se ele é menor que R\$ (\d+),(\d+)$/) do |arg1, arg2|
  puts 'Dólar atual R$: ' + $dolarAtual.to_s 
  	puts '----------------------------------------'

  if $dolarAtual > 3.20
  	fail 'O Dólar atual é maior que R$ 3,20'
  else  	
  	puts 'Dólar atual é menor que R$ 3,20'	
  end
end


