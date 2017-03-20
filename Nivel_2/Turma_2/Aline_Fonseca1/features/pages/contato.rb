class Questions < SitePrism::Page
	 
	element :botao_proxima, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content > span"
    element :campo_nome, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(2) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
    element :campo_email, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
    element :checkbox_sim, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(4) > div:nth-child(2) > div > content > div > label:nth-child(1) > div > div.docssharedWizToggleLabeledContent > div > span"
    element :checkbox_filme7, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(8) > div > label > div > div.docssharedWizToggleLabeledContent > div > span"
    element :checkbox_filme5, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(6) > div > label > div > div.docssharedWizToggleLabeledContent > div > span"
    element :campo_personagem, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(6) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
    element :seletor_escolha, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(7) > div.quantumWizMenuPaperselectEl.docssharedWizSelectPaperselectRoot.freebirdFormviewerViewItemsSelectSelect.freebirdThemedSelectDarkerDisabled > div:nth-child(1) > div.quantumWizMenuPaperselectDropDown.exportDropDown"
    element :opcao_sim, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
    element :botao_enviar, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end
