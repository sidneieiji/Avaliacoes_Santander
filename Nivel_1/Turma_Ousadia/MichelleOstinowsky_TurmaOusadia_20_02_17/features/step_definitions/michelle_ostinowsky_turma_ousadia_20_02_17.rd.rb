Dado(/^que esteja no site de busca bing$/) do
  visit "http://www.bing.com.br"
end

Quando(/^pesquiso pelo termo uol$/) do
    fill_in('sb_form_q', :with => 'uol')
    find(:id, "sb_form_go").click
 
end

Quando(/^acesso o site uol$/) do
  click_link "UOL - O melhor conteúdo"
end

Quando(/^confirmar que estou no site uol$/) do
  if not assert_text('uol')
     fail 'não encontrou'
  end
  
end

Quando(/^acessar a pagina de economia$/) do
  click_link('Economia')
end

Quando(/^localizar o valor do Dólar$/) do
  
   #valor_texto =  find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]/text')
        #puts valor_texto.text
    #valor = valor_texto.text[9, 13].to_i
    #puts valor.class

  #valor = all('p', :text => 'cotacao')[0].click
end

Então(/^comparar se o valor do Dólar é maior ou menor que$/) do
  pending  Write code here that turns the phrase above into concrete actions
  #if valor < 3.2
   # puts 'encerra do sucesso'  
  #else
   # fail 'quebra'
  #end 


end
