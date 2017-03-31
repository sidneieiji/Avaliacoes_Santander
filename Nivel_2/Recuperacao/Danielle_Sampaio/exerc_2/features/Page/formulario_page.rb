class Preencher < SitePrism::Page

	element :proximo, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
	element :nome, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
	element :email,:xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
	element :gostar_sim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
	element :gostar_nao, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div'
	element :filmes_assistidos_ep_3, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]'
	element :filmes_assistidos_ep_6, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]'
	element :personagem_favorito, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
	element :assitir_novo_filme,:xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]'
	element :assistira_novo_filme_sim,:xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content'
	element :enviar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end