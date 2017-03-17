class Formulario < SitePrism::Page

  include RSpec::Matchers

  set_url('https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?chromeless=1&edit_requested=true&fbzx=600030674766350300')

  element :botao_next,       :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
  element :txt_nome,         :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input'
  element :txt_email,        :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input'
  element :radio_sim,        :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
  element :check_ep2,        :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]/div[2]'
  element :check_ep7,        :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]'
  element :check_other,      :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]/div[2]'
  element :txt_other,        :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input'
  element :txt_personagem,   :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input'
  element :list_escolha,     :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[1]/div[1]/content'
  element :list_nao,         :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[4]/content'
  element :botao_submit,     :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'


  def clicar_next
    botao_next.click
  end

  def valida_acesso_formulario
    expect(page).to have_content('Star Wars Questions')
  end

  def preenche_formulario_fake
    txt_nome.set Faker::Name.name_with_middle
    txt_email.set Faker::Internet.email
    radio_sim.click
    check_ep2.click
    check_ep7.click
    check_other.click
    txt_other.set Faker::StarWars.quote
    txt_personagem.set Faker::StarWars.character
    list_escolha.click
    sleep 1
    list_nao.click
    sleep 1

  end

  def clicar_submit
    botao_submit.click
  end

  def valida_formulario_sucesso
    expect(page).to have_content('Obrigado por responder as perguntas! =)')
  end

  def valida_formulario_erro
    expect(page).not_to have_content('Obrigado por responder as perguntas! =)')
  end
end
