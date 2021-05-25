crumb :root do
  link "トップページ", root_path
end

crumb :login do
  link "ユーザーログイン", new_user_session_path
  parent :root
end

crumb :new_user do
  link "ユーザー新規登録", new_user_registration_path
  parent :root
end

crumb :mypage do
  link "マイページ", mypage_user_path(current_user)
  parent :root
end

crumb :userpage do |user|
  user = User.find(params[:id])
  link "#{user.nickname}さんのユーザーページ", user_path(user.id)
  parent :root
end

crumb :mycommentlist do
  link "マイレビューリスト", usercommentlist_user_path(current_user)
  parent :mypage
end

crumb :usercommentlist do |user|
  user = User.find(params[:id])
  link "#{user.nickname}さんのレビューリスト", usercommentlist_user_path(user.id)
  parent :userpage
end

crumb :mypicturelist do
  link "マイベストショットリスト", userpicturelist_user_path(current_user)
  parent :mypage
end

crumb :userpicturelist do |user|
  user = User.find(params[:id])
  link "#{user.nickname}さんのベストショットリスト", userpicturelist_user_path(user.id)
  parent :userpage
end

crumb :edit_user do
  link "アカウント更新", edit_user_registration_path(current_user)
  parent :mypage
end

crumb :favolist do
  link "お気に入りの動物園・水族館", favolist_user_path(current_user)
  parent :mypage
end

crumb :goodlist do
  link "いいねリスト", goodlist_user_path(current_user)
  parent :mypage
end

crumb :edit_comment do |comment|
  comment = Comment.find(params[:id])
  link "レビュー更新", edit_user_comment_path(current_user.id, comment.id)
  parent :mypage
end

crumb :show_mypicture do |picture|
  picture = Picture.find(params[:id])
  link "Myベストショット詳細", user_picture_path(current_user.id, picture.id)
  parent :mypage
end

crumb :edit_picture do |picture|
  picture = Picture.find(params[:id])
  link "ベストショット更新", edit_user_picture_path(current_user.id, picture.id)
  parent :show_mypicture
end

crumb :select_search do
  link "検索結果", search_facilities_path
  parent :root
end

crumb :hokkaidotohoku_area do
  link "北海道・東北エリア", hokkaidotohoku_facilities_path
  parent :root
end

crumb :kanto_area do
  link "関東エリア", kanto_facilities_path
  parent :root
end

crumb :chubu_area do
  link "中部エリア", chubu_facilities_path
  parent :root
end

crumb :kinki_area do
  link "近畿エリア", kinki_facilities_path
  parent :root
end

crumb :chugokushikoku_area do
  link "中国・四国エリア", chugokushikoku_facilities_path
  parent :root
end

crumb :kyushuokinawa_area do
  link "九州・沖縄エリア", kyushuokinawa_facilities_path
  parent :root
end

crumb :toppicturelist do
  link "新規ベストショットリスト", toppicturelist_facilities_path
  parent :root
end

crumb :spot_search do |facility_first|
  link "#{facility_first.prefectures.name}の#{facility_first.category.name}", spot_facilities_path(category_id: facility_first.category_id, prefectures_id: facility_first.prefectures_id)
  if facility_first.region.name == "北海道・東北"
    parent :hokkaidotohoku_area
  elsif facility_first.region.name == "関東"
    parent :kanto_area
  elsif facility_first.region.name == "中部"
    parent :chubu_area
  elsif facility_first.region.name == "近畿"
    parent :kinki_area
  elsif facility_first.region.name == "中国・四国"
    parent :chugokushikoku_area
  elsif facility_first.region.name == "九州・沖縄"
    parent :kyushuokinawa_area
  end
end

# //施設情報用リスト//
crumb :region do |facility|
  facility = Facility.find(params[:id])
  if facility.region.name == "北海道・東北"
    link "#{facility.region.name}エリア", hokkaidotohoku_facilities_path
  elsif facility.region.name == "関東"
    link "#{facility.region.name}エリア", kanto_facilities_path
  elsif facility.region.name == "中部"
    link "#{facility.region.name}エリア", chubu_facilities_path
  elsif facility.region.name == "近畿"
    link "#{facility.region.name}エリア", kinki_facilities_path
  elsif facility.region.name == "中国・四国"
    link "#{facility.region.name}エリア", chugokushikoku_facilities_path
  elsif facility.region.name == "九州・沖縄"
    link "#{facility.region.name}エリア", kyushuokinawa_facilities_path
  end
  parent :root
end

crumb :prefectures do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.prefectures.name}の#{facility.category.name}", spot_facilities_path(category_id: facility.category_id, prefectures_id: facility.prefectures_id)
  parent :region
end

crumb :show_facility do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.name}", facility_path(facility.id)
  parent :prefectures
end

crumb :facilitycommentlist do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.name}のレビューリスト", facilitycommentlist_facility_path(facility.id)
  parent :show_facility
end

crumb :facilitypicturelist do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.name}のベストショットリスト", facilitypicturelist_facility_path(facility.id)
  parent :show_facility
end
# //施設情報用リスト//


# //新規投稿用リスト//
crumb :new_region do |facility|
  facility = Facility.find(params[:facility_id])
  if facility.region.name == "北海道・東北"
    link "#{facility.region.name}エリア", hokkaidotohoku_facilities_path
  elsif facility.region.name == "関東"
    link "#{facility.region.name}エリア", kanto_facilities_path
  elsif facility.region.name == "中部"
    link "#{facility.region.name}エリア", chubu_facilities_path
  elsif facility.region.name == "近畿"
    link "#{facility.region.name}エリア", kinki_facilities_path
  elsif facility.region.name == "中国・四国"
    link "#{facility.region.name}エリア", chugokushikoku_facilities_path
  elsif facility.region.name == "九州・沖縄"
    link "#{facility.region.name}エリア", kyushuokinawa_facilities_path
  end
  parent :root
end

crumb :new_prefectures do |facility|
  facility = Facility.find(params[:facility_id])
  link "#{facility.prefectures.name}の#{facility.category.name}", spot_facilities_path(category_id: facility.category_id, prefectures_id: facility.prefectures_id)
  parent :new_region
end

crumb :new_show_facility do |facility|
  facility = Facility.find(params[:facility_id])
  link "#{facility.name}", facility_path(facility.id)
  parent :new_prefectures
end

crumb :new_comment do |facility|
  link "レビュー投稿", new_facility_comment_path(facility.id)
  parent :new_show_facility
end

crumb :new_picture do |facility|
  link "ベストショット投稿", new_facility_picture_path(facility.id)
  parent :new_show_facility
end
# //新規投稿用リスト//


# //ベストショット詳細用リスト//
crumb :picture_region do |picture|
  picture = Picture.find(params[:id])
  facility = Facility.find(picture.facility_id)
  if facility.region.name == "北海道・東北"
    link "#{facility.region.name}エリア", hokkaidotohoku_facilities_path
  elsif facility.region.name == "関東"
    link "#{facility.region.name}エリア", kanto_facilities_path
  elsif facility.region.name == "中部"
    link "#{facility.region.name}エリア", chubu_facilities_path
  elsif facility.region.name == "近畿"
    link "#{facility.region.name}エリア", kinki_facilities_path
  elsif facility.region.name == "中国・四国"
    link "#{facility.region.name}エリア", chugokushikoku_facilities_path
  elsif facility.region.name == "九州・沖縄"
    link "#{facility.region.name}エリア", kyushuokinawa_facilities_path
  end
  parent :root
end

crumb :picture_prefectures do |picture|
  picture = Picture.find(params[:id])
  facility = Facility.find(picture.facility_id)
  link "#{facility.prefectures.name}の#{facility.category.name}", spot_facilities_path(category_id: facility.category_id, prefectures_id: facility.prefectures_id)
  parent :picture_region
end

crumb :picture_show_facility do |picture|
  picture = Picture.find(params[:id])
  facility = Facility.find(picture.facility_id)
  link "#{facility.name}", facility_path(facility.id)
  parent :picture_prefectures
end

crumb :show_picture do |picture|
  picture = Picture.find(params[:id])
  link "ベストショット詳細", user_picture_path(picture.user_id, picture.id)
  parent :picture_show_facility
end
# //ベストショット詳細用リスト//
