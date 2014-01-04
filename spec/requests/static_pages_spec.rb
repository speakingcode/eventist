require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Eventist'" do
      visit '/static_pages/home'
      expect(page).to have_content('Eventist')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Eventist - Find nearby events happening now! | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Eventist - Find nearby events happening now! | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Eventist - Find nearby events happening now! | About")
    end
  end
end
