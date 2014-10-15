require 'spec_helper'

describe Project do

  let(:user) { FactoryGirl.create(:user) }
  before do
   
    @project = user.projects.build(description: "Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum",
     title:"New Lorem ipsum")
  end

  subject { @project }

  it { should respond_to(:description) }
  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @project.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank description" do
    before { @project.description = " " }
    it { should_not be_valid }
  end

  describe "with description that is too long" do
    before { @project.description = "a" * 251 }
    it { should_not be_valid }
  end
   describe "with blank title" do
    before { @project.title = " " }
    it { should_not be_valid }
  end

  describe "with title that is too long" do
    before { @project.title = "a" * 101 }
    it { should_not be_valid }
  end
end
