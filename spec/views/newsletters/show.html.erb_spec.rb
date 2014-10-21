require 'spec_helper'

describe "newsletters/show" do
  before(:each) do
    @newsletter = assign(:newsletter, stub_model(Newsletter,
      :title => "Title",
      :content1 => "MyText",
      :content2 => "MyText",
      :content3 => "MyText",
      :image1 => "Image1",
      :image2 => "Image2",
      :image3 => "Image3"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Image1/)
    rendered.should match(/Image2/)
    rendered.should match(/Image3/)
  end
end
