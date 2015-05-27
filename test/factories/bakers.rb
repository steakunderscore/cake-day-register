FactoryGirl.define do
  factory :baker do
    email               { Faker::Internet.email }
    email_confirmation  { email }
    name                { "#{Faker::Name.first_name} #{Faker::Name.last_name}" }
  end
end
