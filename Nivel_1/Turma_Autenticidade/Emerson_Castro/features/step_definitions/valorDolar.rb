Dado(/^que eu esteja no site da UOL$/) do
  visit 'http://www.bing.com.br'
 fill_in('q', :with => 'UOL')
 	click_button ('sb_form_go')
 	click_link ('UOL - O melhor conteúdo')
 		has_link?('www.uol.com.br')

 		end                                                                              
                                                                                 
Quando(/^verificar a cotação do dólar$/) do                                      
    # find(:xpath, '//*[@id="menuHorizontal"]/div/div/ul/li[5]/a').click
    click_link('Economia')
    
end                                                                              
                                                                                 
Então(/^ela deve ser menor de R\$(\d+),(\d+)$/) do |arg1, arg2|
 dolar = find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]/text()').text
 print dolar 

end                                                                              