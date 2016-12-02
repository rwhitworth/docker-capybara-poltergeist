require 'turnip'
require 'capybara'
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'turnip/capybara'
require 'pry'

RSpec.configure do |config|
  Dir.glob("spec/steps/**/*_steps.rb") { |f| 
    puts f
    load f, true 
  }
  Capybara.default_driver = :poltergeist
end
