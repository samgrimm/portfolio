require 'spec_helper'

describe "StaticPages" do

let(:base_title) { "Samantha Cabral" }
  describe "Home Page" do
    it "should have the content 'Samantha Cabral'" do
      visit '/static_pages/home'
      expect(page).to have_content('Samantha Cabral')
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title} | Home")
	end	
  end

 describe "About page" do

    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Me')
    end
  end 
end
