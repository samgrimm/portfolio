require 'spec_helper'

describe "Project pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }


  describe "project destruction" do
    before { FactoryGirl.create(:project, user: user) }

    describe "as correct user" do
      before { visit root_path }

      it "should delete a project" do
        expect { click_link "delete" }.to change(Project, :count).by(-1)
      end
    end
  end

  describe "Project creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a Project" do
        expect { click_button "Post" }.not_to change(Project, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before do  
      	fill_in 'project_description', with: "Lorem ipsum"
      	fill_in 'project_title', with: "New Lorem"
      end

      it "should create a Project" do
        expect { click_button "Post" }.to change(Project, :count).by(1)
      end
    end
  end
end