require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do 
    #specifies that we are describing the home page
   
    it "should have the content 'Sample App' " do
       #when you visit the location of the home page aka static_pages it should have as content x
      visit '/static_pages/home'
        #uses the Capybara function ~visit~ to simulate visiting the URL /static_pages/home in a browser
      expect(page).to have_content('Sample App')
       #uses page variable (also provided by Capybara) to express the expectation that the resulting page should have the right content.
    end
     
     it "should have the title 'Home' " do
        visit '/static_pages/home' 
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the content 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do 
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  
  describe "About page" do
    
    it "should have content 'About Us' " do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')     
    end
    
    it "should have the title 'About Us' " do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
    
  end

end
