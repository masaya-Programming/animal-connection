FactoryBot.define do
  factory :picture do
    title       { Faker::Food.vegetables }
    description { Faker::Lorem.sentence }

    association :user
    association :facility

    after(:build) do |picture|
      picture.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
