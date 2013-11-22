# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'johndoe@example.com'
    name  'John Doe'
  end
end
