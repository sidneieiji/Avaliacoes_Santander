require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'

include Capybara::DSL

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.include Capybara::DSL
   	config.current_driver = :selenium
	Capybara.page.driver.browser.manage.window.maximize
   end	