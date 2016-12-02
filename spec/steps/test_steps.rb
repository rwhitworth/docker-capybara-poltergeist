step 'pry' do
  visit 'http://www.google.com'
  puts "Capybara.text: #{Capybara.text}"
  save_screenshot('output/capybara_test_ss.jpg')

  binding.pry
end
