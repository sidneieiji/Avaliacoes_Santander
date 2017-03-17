class Formulario < SitePrism::Page
	element :nome, 		 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input"
	element :email,      :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input"
	element :sim, 	 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div"
	element :nao, 	 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div"
	element :filme1, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[1]/div/label/div/div[1]/div[2]"
	element :filme2, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]"
	element :filme3, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]/div[2]"
	element :filme4, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]"
	element :filme5, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[5]/div/label/div/div[1]/div[2]"
	element :filme6, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[6]/div/label/div/div[1]/div[2]"
	element :filme7, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]"
	element :filme8, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]"
	element :filme9, 	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]/div[2]"
	element :outro,  	 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input"
	element :personagem, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input"
	element :seta, 		 :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]"
	element :sim2,       :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content"
	element :nao2,       :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[4]/content"
	element :enviar,     :xpath, "//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div[2]/content/span"
	element :valida, 'Star Wars Questions'

  def radio_button_1

  	random_select_1 = 1 + rand(2)

  	if random_select_1 == 1
  		sim.click
	else
		nao.click
	end

  end

  def checkbox_filmes

  # Para forçar o teste do item outro, bastar remover o comentario do comando da linha abaixo
  # para testar o erro e imprimir uma frase do Chuck Norris, basta passar um valor maior que 9 na variavel random_select2
    random_select_2 = 1 + rand(9)
  # random_select2 = 9 

  	case random_select_2
  	when 1  then  filme1.click
  	when 2  then  filme2.click
  	when 3  then  filme3.click
	when 4  then  filme4.click
	when 5  then  filme5.click
	when 6  then  filme6.click
	when 7  then  filme7.click
	when 8  then  filme8.click
	when 9  then  filme9.click
				  outro.set 'Rogue One: Uma História Star Wars'
	else   print Faker::ChuckNorris.fact
  end

  end

  def radio_button_2
  	   random_select_3 = 1 + rand(2)
  	if random_select_3 == 1
  		sim2.click
  	else
  		nao2.click
  	end
  end

end