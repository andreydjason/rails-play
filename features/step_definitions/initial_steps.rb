# encoding: utf-8

Before do
end

After do
end


Given /^I Visit Root Path$/ do
  visit('/')
	click_button('enableMACFilterBtn')
	current_path.should == root_path
end

When /^I donk know what to do$/ do
  pending
end

Then /^I go to Google$/ do
  pending
end