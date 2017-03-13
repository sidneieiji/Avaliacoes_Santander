                                                                               
Dado(/^que esteja no site de pesquisa$/) do                                    
  visit "https://www.bing.com.br"
  fill_in 'q', :with => 'uol'
 
  
end                                                                            
                                                                               
Quando(/^consuto pelo site da uol$/) do                                       
     click_button 'Pesquisar'

end                                                                            
                                                                               
Entao(/^apresenta pagina home$/) do                                            
  click_link'O melhor conteúdo'
  sleep (5)  
end                                                                            
                                                                               
Entao(/^Clicar em economia$/) do                                               
 click_link 'Economia'  
 has_css? 'Dólar com'
end                                                                            