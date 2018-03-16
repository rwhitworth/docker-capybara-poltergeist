require 'turnip'
require 'capybara'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'turnip/capybara'
require 'pry'

RSpec.configure do |config|
  Dir.glob("spec/steps/**/*_steps.rb") { |f| 
    puts f
    load f, true 
  }

  driver_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: {
      args: %w(headless disable-gpu no-sandbox)
    }
  )
  Capybara.register_driver :headless_chrome do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: driver_capabilities
    )
  end

end
