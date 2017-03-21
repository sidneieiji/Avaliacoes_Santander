class Contato < SitePrism::Page
	element :botaoavanca, :css,'.freebirdFormviewerViewNavigationNoSubmitButton > content:nth-child(3) > span:nth-child(1)' 
	element :campo_nome, :css,'div.freebirdFormviewerViewItemsItemItem:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)'
	element :campo_email, :css,'.freebirdFormviewerViewItemsTextEmail > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)'  
	element :campo_pergunta, :css,'label.freebirdFormviewerViewItemsRadioChoice:nth-child(1) > div:nth-child(1)'
	element :campo_episodio, :css,'div.freebirdFormviewerViewItemsItemItem:nth-child(5) > div:nth-child(2) > div:nth-child(4) > div:nth-child(1) > label:nth-child(1) > div:nth-child(1)' 
	element :campo_person_favorite, 'div.freebirdFormviewerViewItemsItemItem:nth-child(6) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)'
	element :campo_question, '.quantumWizMenuPaperselectEl > div:nth-child(1)'
	element :campo_Botao, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
	element :campo_BotaoEnviar, 'div.quantumWizButtonPaperbuttonEl:nth-child(2) > content:nth-child(3) > span:nth-child(1)'
end
