# encoding: utf-8

Before do
end

After do
end


Given /The Action is ([A-z]*)/ do |action|
  @action = action
end

When /The Subject is ([A-z]*)/ do |subject|
  @subject = subject
end

Then /The Greeting is (.*)/ do |greeting|
  @greeting = "#{@action}, #{@subject}"
end