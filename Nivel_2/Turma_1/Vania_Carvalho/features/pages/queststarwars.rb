class Queststarwars < SitePrism::Page
	element :proxima, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
	element :nome, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
	element :email, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
	element :star_wars, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]'
	element :filme_1, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
	element :filme_2, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]'
	element :favorito, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
	element :novo_filme, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]'
	element :sim, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
	element :enviar, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end