class Campos_Cadastro < SitePrism::Page
  element :proximo, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
  element :nome, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
  element :email, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
  element :opcao, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
  element :filmes, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
  element :personagem, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
  element :combo,   :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]'
  element :combo_s, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
  element :enviar, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end
