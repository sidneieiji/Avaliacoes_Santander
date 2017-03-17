require 'rspec'
require 'cucumber'
require 'capybara/dsl'
require 'rspec'
require 'rake'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'
require 'faker'

include Capybara::DSL

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.current_driver = :selenium
  config.default_max_wait_time = 3
  Capybara.page.driver.browser.manage.window.maximize
end
