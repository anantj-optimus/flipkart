class ApplicationPage
    include PageObject

    direct_url BASE_URL

	#Find id's, name and other attributes using Firebug
	
	#links
	
    #link :linkName, :text => "linkText", :href => "location where link navigates"
	link :loginhomePage, :text => "Login", :href=> "/account/login"
	link :contact_us, :href => "/s/contact"
    
	#buttons
	#button :buttonName, :id => "buttonId"
	button :Login, :name => "__FK"
	button :search, :value => "Search"
	
	
	#textfields
	#text_field :textfieldName, :id => "id of the text field"
	text_field :loginTextField, :id=> "login_email_id"
	text_field :loginPassword, :id=> "login_password"
	text_field :searchbar, :id=> "fk-top-search-box"
    
	#list
	#select_list :listName, :id =>"listName ID"

    #checkbox
	#checkbox :custom_group, :id => "check box id"
    
	#pageTitle
    #div :page_title, :class => "class for page title"
	span :text_title, :xpath=> "//*[@id='selectedFilters']/div[1]/span[2]"
	span :verify_username, :id=> "fk-auth-display-text"

    
	#if a web element exists within a frame
	
	
	
	def enterTextInFieldWithinFramebyID(frameName, textFieldID, text)
		searchField = @browser.frame(:id => 'frameName').text_field(:id, 'textFieldID')
        searchField.set 'text'
	end
	
	
	def enterTextInFieldbyID(text_Field, text)
		$textField=self.text_Field
		$textField.set text
	end
	
	
	def navigateToURL(url)
		@browser = Watir::Browser.new :ff
		@browser.goto 'url'
	end
	
	def clickButton(buttonName)
		$buttonName=self.buttonName
		searchButton = @browser.button(:name, '$buttonName')
		searchButton.click
	end
	
	def clickLink(linkName)
		searchLink = @browser.link(:href, 'linkName')
		searchLink.click
	end
	
end
