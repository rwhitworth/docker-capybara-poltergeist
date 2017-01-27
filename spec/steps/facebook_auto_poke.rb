visit 'https://www.facebook.com'

email = ''
password = ''

fill_in('email', :with => email)
fill_in('pass', :with => password)

click_button('Log In')

visit 'https://www.facebook.com/pokes'

while (1) do
  begin
    sleep 5
    if (page.find_all('a').collect {|x| x if x.text == 'Poke Back' }.compact.count > 0) 
      page.find_all('a').collect {|x| x if x.text == 'Poke Back' }.compact.first.click
	end
  rescue
    sleep 1
  end
end 
