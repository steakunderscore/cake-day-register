FactoryGirl.define do
  factory :cake_day do
    baker
    date { Date.today }
  end
end
