  Dado(/^que esteja no site de busca$/) do
  visit "https://www.bing.com.br"
  fill_in 'q', :with => 'uol'
end

Quando(/^busca pelo site da uol$/) do
  click_button 'Pesquisar'
  click_link 'O melhor conteúdo'
    
end  
   
 Entao(/^apresenta pagina home$/) do
 	click_link 'Economia' 
  has_css? 'Dólar com' 
  sleep (5) 
end
                                                                             
                                                                    