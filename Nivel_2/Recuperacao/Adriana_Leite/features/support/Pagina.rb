  class PG < SitePrism::Page
    element :proxima_pg, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewNavigationNavControls > div.freebirdFormviewerViewNavigationButtonsAndProgress > div > div > content > span'
    element :name,       :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
    element :email, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(3) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
    element :botao_sim, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
    element :botao_nao, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]'
    element :ep_0, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[1]/div/label/div/div[1]/div[2]'
    element :ep_1, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]'
    element :ep_2, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]/div[2]'
    element :ep_3, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]'
    element :ep_4, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[5]/div/label/div/div[1]/div[2]'
    element :ep_5, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[6]/div/label/div/div[1]/div[2]'
    element :ep_6, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]'
    element :ep_7, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]'
    element :ep_o, :xpath,'//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]/div[2]'
    element :personagem, :css, '#mG61Hd > div > div.freebirdFormviewerViewFormContent > div.freebirdFormviewerViewItemList > div:nth-child(6) > div.freebirdFormviewerViewItemsTextItemWrapper > div > div.quantumWizTextinputPaperinputMainContent.exportContent > div > div.quantumWizTextinputPaperinputInputArea > input'
    element :combobox, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[1]/div[1]/content'
    element :Csim, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]'
    element :fim , :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'
end
