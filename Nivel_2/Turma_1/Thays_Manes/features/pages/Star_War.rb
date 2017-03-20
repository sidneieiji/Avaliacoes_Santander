class Formulario < SitePrism::Page
   element :proxima, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content'
   element :nome, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
   element :email, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
   element :like, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
   element :episodio, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]'
   element :personagem, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
   element :check_box, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]'
   element :sim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content'
   element :confirma, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'

 end
