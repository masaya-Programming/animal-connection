require 'csv'

csv = CSV.read('db/fixtures/facilities.csv')
csv.each do |facility|
  id = facility[0]
  name = facility[1]
  kananame = facility[2]
  hiraname = facility[3]
  category_id = facility[4]
  region_id = facility[5]
  prefectures_id = facility[6]
  address = facility[7]
  official_website = facility[8]
  latitude = facility[9]
  longitude = facility[10]
  business_data = facility[11]
  closed_data = facility[12]
  animal_data = facility[13]
  attention_point = facility[14]

  Facility.seed do |s|
    s.id = id
    s.name = name
    s.kananame = kananame
    s.hiraname = hiraname
    s.category_id = category_id
    s.region_id = region_id
    s.prefectures_id = prefectures_id
    s.address = address
    s.official_website = official_website
    s.latitude = latitude
    s.longitude = longitude
    s.business_data = business_data
    s.closed_data = closed_data
    s.animal_data = animal_data
    s.attention_point = attention_point
  end
end
