class Form < SitePrism::Page
	
	element :next_button, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div/content/span"
	element :form_name, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input"
	element :form_email, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input"
	element :form_optionyes, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div"
	element :form_optionnot, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div"
	element :form_outro, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input"
	element :form_person, :xpath, ".//*[@id='mG61Hd']/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input"

	def selected_option
		
		conditionnamed = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input")
	
		if  conditionnamed != text.include?("Dr.") 						
			
			form_optionnot.click
		else
			form_optionyes.click
            		end         		
          	end

          	def selected_checked
            		
		if form_email == text.include?(".name") || form_email == text.include?(".io") || form_email == text.include?(".biz")
			            			
		case1 = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[1]/div/label/div/div[1]/div[2]")
		case1.click
		

		else form_email == text.include?(".com") || form_email == text.include?(".org") || form_email == text.include?(".br")
			            			
		case2a = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[2]")
		case2a.click

		case2b = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[3]/div/label/div/div[1]/div[2]")
		case2b.click

		case2c = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[4]/div/label/div/div[1]/div[2]")
		case2c.click

		case2d = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[5]/div/label/div/div[1]/div[2]")
		case2d.click

		case2f = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[6]/div/label/div/div[1]/div[2]")	
		case2f.click  

		case2g = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[7]/div/label/div/div[1]/div[2]")
		case2g.click 

		case2h = page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[8]/div/label/div/div[1]/div[2]")
		case2h.click 		
		
		end
	end

	def fake_episode

		unless form_outro.nil?
			form_outro.set Faker::StarWars.planet
		end
	end

	def selected_watch_movie

	page.find(:xpath,"//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]").click	
	page.find(:xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]/content").click
	
	end

	def form_send_assert

	page.find(:xpath,"//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div[2]/content/span").click
	assert_text('Obrigado por responder as perguntas! =)')

	end
end