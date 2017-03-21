class Formulario < SitePrism::Page
	#set_url = 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY'
	element :botprox, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div/content/span"
	element :form_nome, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input"
	 #element :first_name, :xpath, "//div[@id='signup']//input[@name='first-name']"
	element :email, :xpath,"//*[@id='mG61Hd']/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input"
	element :perg1, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]"
	element :perg2m1, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]"						
	element :perg2m2, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]/div[2]"
	element :perg2m3, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]"
	element :perg3, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input"
	element :perg4abrir, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[1]/div[1]"
	element :perg4sel, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]"
	element :enviar, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div[2]/content/span"
end