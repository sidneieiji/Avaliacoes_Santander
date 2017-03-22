require 'rspec'
require 'yaml'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'site_prism'
require 'faker'

include Capybara::DSL

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :firefox)

	 # Use an existing profile                                                                                                                                                      
	profile = Selenium::WebDriver::Firefox::Profile.new('C:\Users\Inmetrics\AppData\Local\Mozilla\Firefox\Profiles\xk9ny8qp.default') 


	 # Configure proxy autodetect                                                                                                                                                    
	profile["network.proxy.type"] = 4

	#Sem uso
	#profile["network.proxy.http"] = 'localhost'                                                                                                                              
    	#profile["network.proxy.http_port"] = 3128                                                                                                                                      
                                                                                                                                                                                   
Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
end

Capybara.configure do |config|
 config.current_driver = :selenium
 config.default_max_wait_time = 3
 Capybara.page.driver.browser.manage.window.maximize
end