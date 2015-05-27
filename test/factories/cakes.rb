FactoryGirl.define do
  factory :cake do
    name { Faker::Name.first_name }
  end
end
