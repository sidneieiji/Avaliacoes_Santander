Dado(/^que esteja no site da UOL$/) do
  visit "http://www.google.com.br"
  sleep 10
  fill_in "lst-ib", :with => "UOL"
  click_link('UOL', match: :first)
  assert_text("UOL")
  click_link("Economia")
end

Quando(/^buscar valor pela cotação$/) do
  binding.pry
  find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]').click
end

Então(/^apresentará um leque de opções de cotação e valores$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
