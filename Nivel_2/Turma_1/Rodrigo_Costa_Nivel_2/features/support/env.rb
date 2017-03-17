require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'rubygems'
require 'pry'
require 'faker'
require 'site_prism'
require "yaml"
require "pry-nav"
require "rspec"
require "rspec/expectations"

include Capybara::DSL

ENVIRONMENT = (YAML.load_file('./features/config/environment.yml'))


Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
#	Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.configure do |config|
	config.current_driver = :selenium
	config.default_max_wait_time = 3
	Capybara.page.driver.browser.manage.window.maximize
end
