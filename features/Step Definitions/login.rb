
Given(/^I navigate to Flipkart$/) do
@browser.driver.manage.window.maximize

end

Given(/^I login using "(.*)" and "(.*)"$/) do |username, password|
  on ApplicationPage do |page|
  page.loginhomePage_element.when_present.click
  page.loginTextField = username
  page.loginPassword = password
  @browser.send_keys :enter
  #page.Login_element.when_present.click
  #@browser.input(:name => '__FK').button(:value, 'Login').when_present.click
  
  end
end

Then(/^the User should successfully login with ID "(.*)"$/) do |verify_user|
  on ApplicationPage do |page|
  page.verify_username_element.text.include?(verify_user)
  end
end


Given(/^I enter "(.*)" in search bar then the text should be verified$/) do |entered_text|
  on ApplicationPage do |page|
  
  page.searchbar = entered_text
  #page.search.click
  @browser.send_keys :enter
  sleep(10)
  page.text_title_element.text.include?(entered_text)
  end
end

Given(/^I navigate to the contact Us section$/) do
  on ApplicationPage do |page|
  page.contact_us_element.when_present.click
  sleep(5)
  end
end

Given(/^select the desired dropdown values then the user should be able to select the desired values$/) do
	
	@browser.select(:id => "cs_r_1_v").option(:value=>"payment").click
	sleep(3)
	@browser.select(:id => "cs_r_2_v").option(:value=>"egift_voucher").click
	sleep(2)
end

Given(/^I hover cursor on Clothing$/) do
	
	@browser.a(:text => "Clothing").hover
end

Given(/^select the desired category then the user should navigate to that$/) do
	@browser.a(:text => "T-shirts").click
end



  
  
  
 