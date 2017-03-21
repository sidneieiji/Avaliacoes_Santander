class Formulario < SitePrism::Page

	element :proximo, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
	element :nome, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
	element :email,:xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
	element :gosta_startwars_sim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
	element :gosta_startwars_nao, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div'
	element :quaisfilmes_epis1, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
	element :quaisfilmes_epis7, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]'
	element :personagemfavo, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
	element :assitirnovofilme,:xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]'
	element :assitirnovofilme_sim,:xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content'
	element :enviar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content'

end
