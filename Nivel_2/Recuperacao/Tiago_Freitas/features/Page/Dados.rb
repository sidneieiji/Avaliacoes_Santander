class Cadastro < SitePrism::Page
element :botao_proxima, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
element :campo_nome, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
element :campo_email, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
element :gosta_starwars, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
element :filme_starwars, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[5]/div/label/div/div[1]'
element :outro_starwars, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]'
element :campo_outro, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input'
element :personagem_starwars, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
element :escolha_starwars, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]'
element :escolha_sim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]' 
element :campo_enviar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/div[2]'
end

