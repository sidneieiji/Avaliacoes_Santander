class Formulario < SitePrism::Page
element :botao_proxima, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content'
element :Campo_Nome,:css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(2) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
element :Campo_Email, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
element :Opcao_Nao, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(4) > div:nth-child(2) > div > content > div > label:nth-child(2) > div > div.docssharedWizToggleLabeledContent > div > span'
element :Checkbox_Nenhum, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(5) > div:nth-child(2) > div:nth-child(1) > div > label > div > div.docssharedWizToggleLabeledContent > div > span'
element :Campo_Personagem, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(6) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
element :Selecao_Filme, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]'
element :opcao_Sim, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content'
element :Botao_Enviar, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end
