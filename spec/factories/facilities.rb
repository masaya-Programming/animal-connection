FactoryBot.define do
  factory :facility do
    name             { Gimei.city.kanji }
    kananame         { Gimei.city.katakana }
    category_id      { Faker::Number.between(from: 1, to: 2) }
    region_id        { Faker::Number.between(from: 1, to: 6) }
    prefectures_id   { Faker::Number.between(from: 1, to: 47) }
    address          { Gimei.address.kanji }
    official_website { Faker::Internet.url }
    latitude         { Faker::Address.latitude }
    longitude        { Faker::Address.longitude }
  end
end
