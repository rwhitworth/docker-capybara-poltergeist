module SS
  module SS
    def ss
      save_screenshot('output/capybara_test_ss.jpg')
    end
  end
end

step 'take screenshot' do
  save_screenshot('output/capybara_test_ss.jpg')
end

step 'pry' do
  extend SS::SS # allows for ss() to be called during debugging
  binding.pry
end

step 'visit :url' do |url|
  visit url
end

step 'search google for :string' do |search_string|
  visit 'http://www.google.com'
  page.fill_in 'q', with: search_string
  page.all('input').find {|x| x.value == 'Google Search'}.click
end

step 'throw exception' do
  throw 'exception 12345 that is super important!!!'
end

step 'sleep :sleep' do |s|
  sleep s.to_i
end
