class Formulario < SitePrism::Page
	element :botao_proxima, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content > span"
	element :resposta_nome, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(2) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
	element :inserir_email, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
	element :clicar_sim_nao, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(4) > div:nth-child(2) > div > content > div > label:nth-child(1) > div > div.quantumWizTogglePaperradioEl.docssharedWizToggleLabeledControl.freebirdThemedRadio.freebirdThemedRadioDarkerDisabled.freebirdFormviewerViewItemsRadioControl > div.quantumWizTogglePaperradioRadioContainer > div"
	element :episodio_dois, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(3) > div > label > div > div.docssharedWizToggleLabeledContent > div > span"
	element :episodio_quatro, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(5) > div > label > div > div.docssharedWizToggleLabeledContent > div > span"
	element :episodio_sete, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(8) > div > label > div > div.docssharedWizToggleLabeledContent > div > span"
	element :episodio_outro, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(9) > div > div > div > div > div > div.quantumWizTextinputSimpleinputContentArea > input"
	element :personagem_favorito, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(6) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input"
	element :opcao_escolher, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(7) > div.quantumWizMenuPaperselectEl.docssharedWizSelectPaperselectRoot.freebirdFormviewerViewItemsSelectSelect.freebirdThemedSelectDarkerDisabled > div:nth-child(1) > div.quantumWizMenuPaperselectOptionList > div.quantumWizMenuPaperselectOption.freebirdThemedSelectOptionDarkerDisabled.exportOption.isSelected.isPlaceholder > content"
	element :opcao_sim, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(7) > div.quantumWizMenuPaperselectEl.docssharedWizSelectPaperselectRoot.freebirdFormviewerViewItemsSelectSelect.freebirdThemedSelectDarkerDisabled.isOpen > div.exportSelectPopup.quantumWizMenuPaperselectPopup > div:nth-child(3) > content"
	element :botao_enviar, :css, "#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div.quantumWizButtonPaperbuttonEl.quantumWizButtonPaperbuttonFlat.quantumWizButtonPaperbuttonDark.quantumWizButtonPaperbutton2El2.freebirdFormviewerViewNavigationSubmitButton > content > span"
end


