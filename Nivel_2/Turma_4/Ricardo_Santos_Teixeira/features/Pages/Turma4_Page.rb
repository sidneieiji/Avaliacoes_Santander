class Home < SitePrism::Page
  set_url "https://vtrmartinez.wixsite.com/dojo"
  	element :menu_contato, "#DrpDwnMn02label"
	element :contato, "#CntctFrm1nameField"
	element :email, "#CntctFrm1emailField"
	element :assunto, "#CntctFrm1subjectField"
	element :mensagem, "#CntctFrm1messageField"
    element :botao_enviar, "#CntctFrm1submit"
end