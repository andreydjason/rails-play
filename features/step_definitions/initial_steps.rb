# encoding: utf-8

Before do
end

After do
end


When /I enter the website/ do
	visit('/')
	click_button('enableMACFilterBtn')
	current_path.should == root_path
end
