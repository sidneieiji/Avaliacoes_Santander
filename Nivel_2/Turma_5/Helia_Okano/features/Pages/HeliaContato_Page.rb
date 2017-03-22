class Starquestion < SitePrism::Page
	element :botao_proxima,:css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content > span'
    element :nome_usuario,:css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(2) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
	element :email_usuario, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
    element :gosta_starwars, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(4) > div:nth-child(2) > div > content > div > label:nth-child(1) > div > div.docssharedWizToggleLabeledContent > div > span'
    element :filme_assistido, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(4) > div > label > div > div.docssharedWizToggleLabeledContent > div > span'
    element :personagem_star, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(6) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
	element :choose_seta, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(7) > div.quantumWizMenuPaperselectEl.docssharedWizSelectPaperselectRoot.freebirdFormviewerViewItemsSelectSelect.freebirdThemedSelectDarkerDisabled > div:nth-child(1) > div.quantumWizMenuPaperselectDropDown.exportDropDown'
    element :botao_sim, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(7) > div.quantumWizMenuPaperselectEl.docssharedWizSelectPaperselectRoot.freebirdFormviewerViewItemsSelectSelect.freebirdThemedSelectDarkerDisabled.isOpen > div.exportSelectPopup.quantumWizMenuPaperselectPopup"
	element :botao_enviar, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
    
	end

