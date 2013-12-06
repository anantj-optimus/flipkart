Feature: Navigating through Flipkart website

Scenario Outline: Login on Flipkart usingvalid credentials
	Given I navigate to Flipkart
	And I login using "<username>" and "<password>"
	Then the User should successfully login with ID "<searchText>"
	
Scenarios:
	|username|password|verify_user|
	|varunb2110@gmail.com|varunb21|varunb2110| 
	
	
Scenario Outline: Search for item
	Given I navigate to Flipkart
	And I enter "<text>" in search bar then the text should be verified
	
Scenarios:
	|text|
	|test|
	|testing|
	

Scenario: Contact Us
	Given I navigate to Flipkart
	And I navigate to the contact Us section
	And select the desired dropdown values then the user should be able to select the desired values

	
Scenario: Hover on a menu item
	Given I navigate to Flipkart
	And I hover cursor on Clothing
	And select the desired category then the user should navigate to that
	
	

	