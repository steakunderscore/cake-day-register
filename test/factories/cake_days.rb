FactoryGirl.define do
  factory :cake_day do
    assocation :baker
    date { Date.today }
  end
end
