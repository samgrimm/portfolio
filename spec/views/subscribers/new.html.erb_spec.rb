require 'spec_helper'

describe "subscribers/new" do
  before(:each) do
    assign(:subscriber, stub_model(Subscriber,
      :email => "MyString",
      :subscribe => false
    ).as_new_record)
  end

  it "renders new subscriber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscribers_path, "post" do
      assert_select "input#subscriber_email[name=?]", "subscriber[email]"
      assert_select "input#subscriber_subscribe[name=?]", "subscriber[subscribe]"
    end
  end
end
