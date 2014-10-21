require 'spec_helper'

describe "newsletters/new" do
  before(:each) do
    assign(:newsletter, stub_model(Newsletter,
      :title => "MyString",
      :content1 => "MyText",
      :content2 => "MyText",
      :content3 => "MyText",
      :image1 => "MyString",
      :image2 => "MyString",
      :image3 => "MyString"
    ).as_new_record)
  end

  it "renders new newsletter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", newsletters_path, "post" do
      assert_select "input#newsletter_title[name=?]", "newsletter[title]"
      assert_select "textarea#newsletter_content1[name=?]", "newsletter[content1]"
      assert_select "textarea#newsletter_content2[name=?]", "newsletter[content2]"
      assert_select "textarea#newsletter_content3[name=?]", "newsletter[content3]"
      assert_select "input#newsletter_image1[name=?]", "newsletter[image1]"
      assert_select "input#newsletter_image2[name=?]", "newsletter[image2]"
      assert_select "input#newsletter_image3[name=?]", "newsletter[image3]"
    end
  end
end
