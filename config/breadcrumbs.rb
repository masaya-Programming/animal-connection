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

crumb :edit_user do
  link "アカウント更新", edit_user_registration_path(current_user)
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

# //施設情報用リスト//
crumb :region do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.region.name}エリア", search_facilities_path
  parent :root
end

crumb :prefectures do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.prefectures.name}", search_facilities_path
  parent :region
end

crumb :show_facility do |facility|
  facility = Facility.find(params[:id])
  link "#{facility.name}", facility_path(facility.id)
  parent :prefectures
end
# //施設情報用リスト//

# //ベストショット詳細用リスト//
crumb :picture_region do |picture|
  picture = Picture.find(params[:id])
  facility = Facility.find(picture.facility_id)
  link "#{facility.region.name}エリア", search_facilities_path
  parent :root
end

crumb :picture_prefectures do |picture|
  picture = Picture.find(params[:id])
  facility = Facility.find(picture.facility_id)
  link "#{facility.prefectures.name}", search_facilities_path
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

# //新規投稿用リスト//
crumb :new_region do |facility|
  facility = Facility.find(params[:facility_id])
  link "#{facility.region.name}エリア", search_facilities_path
  parent :root
end

crumb :new_prefectures do |facility|
  facility = Facility.find(params[:facility_id])
  link "#{facility.prefectures.name}", search_facilities_path
  parent :new_region
end

crumb :new_show_facility do |facility|
  facility = Facility.find(params[:facility_id])
  link "#{facility.name}", facility_path(facility.id)
  parent :new_prefectures
end
# //新規投稿用リスト//

crumb :new_comment do |facility|
  link "レビュー投稿", new_facility_comment_path(facility.id)
  parent :new_show_facility
end

crumb :new_picture do |facility|
  link "ベストショット投稿", new_facility_picture_path(facility.id)
  parent :new_show_facility
end
