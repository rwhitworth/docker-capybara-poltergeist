require 'capybara'
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'pry'
Capybara.default_driver = :poltergeist
Capybara.visit 'http://www.google.com'
puts Capybara.text
binding.pry
