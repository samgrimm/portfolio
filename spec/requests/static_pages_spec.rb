require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Samantha Cabral'" do
      visit '/static_pages/home'
      expect(page).to have_content('Samantha Cabral')
    end
  end

 describe "About page" do

    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Me')
    end
  end 
end
