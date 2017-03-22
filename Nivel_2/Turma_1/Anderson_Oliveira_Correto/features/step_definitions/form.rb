Dado (/^que eu esteja no site$/) do

@home=Home.new
@home.load

@form = Form.new
@form.next_button.click

end

Quando(/^preencher todas as informações do formulário$/) do

@form.form_name.set  Faker::Name.name
sleep 2
@form.form_email.set  Faker::Internet.email
sleep 2
@form.selected_option
sleep 2
@form.selected_checked
sleep 2
@form.fake_episode
sleep 2
@form.form_person.set  Faker::StarWars.character
sleep 2
@form.selected_watch_movie
sleep 2
end

Então(/^o sistema exibe mensagem de envio com sucesso$/) do

@form.form_send_assert
sleep 3
end