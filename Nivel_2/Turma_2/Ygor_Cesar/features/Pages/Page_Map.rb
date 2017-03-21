class Page_Map < SitePrism::Page
	element :BotaoNext, :css,'#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content > span'
	element :CampoNome, :css,'#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(2) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
	element :Email, :css,'#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
	element :GostoSim, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
	element :GostoNao, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div'
	element :FilmeNenhum, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[1]/div/label/div/div[1]/div[2]'
	element :Filme1, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
	element :Filme2, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
	element :Filme3, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]'
	element :Filme4, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[5]/div/label/div/div[1]/div[2]'
	element :Filme5, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[6]/div/label/div/div[1]/div[2]'
	element	:Filme6, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]'
	element :Filme7, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]'
	element :FilmeOutro, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]/div[2]'
	element :FilmeOutroTxt, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input'
	element :Personagem, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
	element :AssistirBotao, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[1]/div[1]'
	element :AssistirSim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
	element :AssistirNao, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[4]/content'
	element :Enviar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
	element :Voltar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[1]/content/span'
end