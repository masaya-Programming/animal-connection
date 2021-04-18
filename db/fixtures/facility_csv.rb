require 'csv'

csv = CSV.read('db/fixtures/facilities.csv')
csv.each do |facility|
  id = facility[0]
  name = facility[1]
  kananame = facility[2]
  category_id = facility[3]
  region_id = facility[4]
  prefectures_id = facility[5]
  address = facility[6]
  official_website = facility[7]
  latitude = facility[8]
  longitude = facility[9]

  Facility.seed do |s|
    s.id = id
    s.name = name
    s.kananame = kananame
    s.category_id = category_id
    s.region_id = region_id
    s.prefectures_id = prefectures_id
    s.address = address
    s.official_website = official_website
    s.latitude = latitude
    s.longitude = longitude
  end
end
