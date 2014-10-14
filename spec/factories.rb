FactoryGirl.define do
  factory :user do
    name     "Testing Sam"
    email    "testing@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end