require 'capybara/dsl'
require 'rspec/expectations'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.current_driver = :chrome

World(Capybara::DSL)