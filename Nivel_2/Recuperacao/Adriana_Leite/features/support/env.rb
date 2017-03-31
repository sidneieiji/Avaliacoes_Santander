require 'rspec'
require 'yaml'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'site_prism'
require 'faker'


include Capybara::DSL

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
 config.current_driver = :selenium
 config.default_max_wait_time = 4
 Capybara.page.driver.browser.manage.window.maximize
end