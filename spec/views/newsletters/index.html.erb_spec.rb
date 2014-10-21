require 'spec_helper'

describe "newsletters/index" do
  before(:each) do
    assign(:newsletters, [
      stub_model(Newsletter,
        :title => "Title",
        :content1 => "MyText",
        :content2 => "MyText",
        :content3 => "MyText",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3"
      ),
      stub_model(Newsletter,
        :title => "Title",
        :content1 => "MyText",
        :content2 => "MyText",
        :content3 => "MyText",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3"
      )
    ])
  end

  it "renders a list of newsletters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image1".to_s, :count => 2
    assert_select "tr>td", :text => "Image2".to_s, :count => 2
    assert_select "tr>td", :text => "Image3".to_s, :count => 2
  end
end
