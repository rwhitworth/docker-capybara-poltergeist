require 'capybara'
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'pry'
Capybara.default_driver = :poltergeist
Capybara.visit 'http://www.google.com'
puts "Capybara.text: #{Capybara.text}"
Capybara.save_screenshot('capybara_test_ss.jpg')
binding.pry
