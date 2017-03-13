Dado(/^que acesse o buscador Google$/) do
 visit "https://www.google.com.br/"
end

Quando(/^procurar por Uol Economia$/) do
 fill_in "q", :with => "Uol Economia"
end

Então(/^clicar no link da Uol Economia$/) do
  click_link "UOL Economia:"
  sleep 10
end

