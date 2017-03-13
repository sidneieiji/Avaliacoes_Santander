Dado(/^acesse o site do Google$/) do
  visit "http://www.bing.com/"
end

Quando(/^procurar o site do uol$/) do
	fill_in "sb_form_q", :with => "uol"
	find("#sb_form_go").click
	click_link("UOL - O melhor conteúdo")
	end

Então(/^encontrar a area de economia$/) do
	click_on("menu-uol-estacao bg2-hover canal-economia")
end
