FactoryBot.define do
  factory :facility do
    name             { Gimei.city.kanji }
    kananame         { Gimei.city.katakana }
    hiraname         { Gimei.city.hiragana }
    category_id      { Faker::Number.between(from: 1, to: 2) }
    region_id        { Faker::Number.between(from: 1, to: 6) }
    prefectures_id   { Faker::Number.between(from: 1, to: 47) }
    address          { Gimei.address.kanji }
    official_website { Faker::Internet.url }
    latitude         { Faker::Address.latitude }
    longitude        { Faker::Address.longitude }
    business_data    { Faker::Lorem.sentence }
    closed_data      { Faker::Lorem.sentence }
    animal_data      { Faker::Lorem.sentence }
    attention_point  { Faker::Lorem.sentence }
  end
end
