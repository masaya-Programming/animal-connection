FactoryBot.define do
  factory :good do
    association :user
    association :picture
  end
end
