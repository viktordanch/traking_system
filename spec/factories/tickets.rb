# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    code "MyString"
    subject "MyString"
    body "MyText"
    author_id 1
    programer_id 1
  end
end
