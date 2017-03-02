# Nome: Willian Goulart

Dado(/^que esteja na home do site do UOL$/) do
  visit 'http://www.bing.com/'
  fill_in "sb_form_q", :with => "uol"
  click_button "sb_form_go"
  click_link "UOL - O melhor conteúdo"
end

Quando(/^buscar informações sobre o dolar na area de economia$/) do
  has_link?"https://www.uol.com.br/"
  sleep 10
  click_link "Economia"
  find :xpath, "//*[@id='header-menu']/ul/li[2]/a"
  visit "http://economia.uol.com.br/cotacoes"

end

Então(/^apresentará o valor da cotação do dolar$/) do

sleep 10
end
