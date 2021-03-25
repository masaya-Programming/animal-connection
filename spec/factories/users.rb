FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 12) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 15) }
    password_confirmation { password }
    gender_id             { Faker::Number.between(from: 1, to: 3) }
  end
end
