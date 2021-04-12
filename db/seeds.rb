# require "csv"

# CSV.foreach('db/seeds-csv/facilities.csv', headers: true) do |row|
#   Facility.create(
#     name:             row['name'],
#     kananame:         row['kananame'],
#     category_id:      row['category_id'],
#     prefectures_id:   row['prefectures_id'],
#     address:          row['address'],
#     official_website: row['official_website']
#   )
# end
