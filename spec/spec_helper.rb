require 'turnip'
require 'capybara'
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'turnip/capybara'
require 'pry'
require 'base64'

RSpec.configure do |config|
  Dir.glob("spec/steps/**/*_steps.rb") { |f| 
    puts f
    load f, true 
  }
  Capybara.default_driver = :poltergeist
#  config.include Capybara::DSL

  config.before(:type => :feature) do |x|
    # binding.pry
  end
  
  config.after(:type => :feature) do |x|
    # binding.pry
    s = x.reporter.examples.last
    puts "exception: #{!s.exception.nil?}"
    puts "location : #{s.metadata[:location]}"
    puts "descript : #{s.metadata[:description]}"
    puts "started  : #{s.metadata[:execution_result].started_at}"
    puts "stopped  : #{Time.now}"
    puts Base64.encode64([!s.exception.nil?, s.metadata[:location], s.metadata[:description], s.metadata[:execution_result].started_at, Time.now.to_s].to_json)
  end
end
