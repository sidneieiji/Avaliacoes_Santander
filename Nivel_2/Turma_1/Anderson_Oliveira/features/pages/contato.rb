class Contato < SitePrism::Page
	element :contato, '#DrpDwnMn02label'
	element :email, '#CntctFrm1emailField'
	element :campo_nome, '#CntctFrm1nameField'
	element :assunto, '#CntctFrm1subjectField'
	element :mensagem, '#CntctFrm1messageField'
	element :confirmar, '#CntctFrm1submit'


	
end