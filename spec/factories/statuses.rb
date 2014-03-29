# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :status do
    provider "MyString"
    providers_guid "MyString"
    type ""
    posted_at "2014-03-29"
    timezone_offset 1
    location nil
    user nil
  end
end
