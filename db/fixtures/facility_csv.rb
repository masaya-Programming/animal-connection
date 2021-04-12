require 'csv'

csv = CSV.read('db/fixtures/facilities.csv')
csv.each do |facility|
  id = facility[0]
  name = facility[1]
  kananame = facility[2]
  category_id = facility[3]
  prefectures_id = facility[4]
  address = facility[5]
  official_website = facility[6]

  Facility.seed do |s|
    s.id = id
    s.name = name
    s.kananame = kananame
    s.category_id = category_id
    s.prefectures_id = prefectures_id
    s.address = address
    s.official_website = official_website
  end
end
