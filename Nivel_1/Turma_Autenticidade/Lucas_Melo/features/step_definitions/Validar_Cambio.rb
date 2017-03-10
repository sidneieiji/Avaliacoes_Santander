#element :header, "#sprite sprite-geral logo-header-20anos"

Dado(/^que esteja na home do uol$/) do
  visit "http://www.google.com.br"
  fill_in "lst-ib", :with => "Uol"
  click_link('UOL - O melhor conteúdo', match: :first)
  expect(page).to have_content('UOL - O melhor conteúdo')
end

Quando(/^eu acessar a are de enconomia do uol$/) do
  click_link('Economia', match: :first)
end

Então(/^será apresentada a taxa cambial do dolar$/) do
  @cambio = find(:xpath, '//*[@id="conteudo"]/div[1]/section/div[3]/div[1]/div[2]/div[2]/section[2]/header/h1/a')
end

Dado(/^que eu esteja na area de economia do uol$/) do
  @cambio = find(:xpath, '//*[@id="titulo-uol"]/a[2]')
end


Quando(/^a taxa cambial do dolar for menor que "([^"]*)"$/) do |arg1|
  @valid_value = arg1
  @value_cot = find(:xpath,'//*[@id="conteudo"]/div[1]/section/div[3]/div[1]/div[2]/div[2]/section[2]/table/tbody/tr[2]/td[2]/table/tbody/tr/td[2]').text
  puts @value_cot
end

Então(/^o teste será aprovado$/) do
  if @value_cot < @valid_value
    puts true
  else
    puts false
  end
end








#Dado(/^que esteja na home do site do banco$/) do
#  visit "http://www.google.com.br"
#  fill_in "lst-ib", :with => "Santander"
#  click_link('Santander', match: :first)
#end

#Quando(/^buscar por Central de Contato$/) do
#  find("#central").click
#end

#Então(/^apresentará as informações da Central de Contato$/) do
#  assert_text('4004 3535')
  #sleep 5
#end
