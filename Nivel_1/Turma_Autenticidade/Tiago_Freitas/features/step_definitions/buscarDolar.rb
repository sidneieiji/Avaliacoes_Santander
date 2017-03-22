Dado(/^que estou na home do site uol$/) do
  visit "https://www.uol.com.br/"
end

Quando(/^clicar em economia$/) do
  find(".menu-uol-estacao.bg2-hover.canal-economia").click
end

Então(/^deve comparar o valor do dolar se é menor que o solicitado$/) do
sleep 2
  find(:xpath, '//*[@id="cambio"]/h2/a').click
   @valorDolar = find(:xpath, '//*[@id="conteudo-principal"]/div[1]/div[2]/div[1]/table/tbody/tr/td[2]').text
   puts @valorDolar
   @comparativo = '3,20'
   if @valorDolar < @comparativo
     puts true
   else
     puts false
   end
end
