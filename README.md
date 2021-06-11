# アプリケーション名
  <p>animal-connection(あにまるコネクション)</p>
  <img width="204" alt="アプリアイコン" src="https://user-images.githubusercontent.com/77490765/119881291-15e89480-bf68-11eb-998c-56177644f0ce.png">

# アプリケーションURL
  <p>https://access.animal-connection.info</p>

# テスト用アカウント
  ### ニックネーム
   <p>山田一郎</p>

  ### メールアドレス
   <p>test11@example.com</p>

  ### パスワード</p>
   <p>test11</p>
  
# アプリケーション概要
  ## 動物園・水族館の検索
  <p>日本全国281ヶ所の動物園・水族館を以下3つの検索方法で探すことができます。</p>
  <p>「キーワード検索」>> 漢字,ひらがな,カタカナで探せる。</p>
  <p>「カテゴリー検索」>> 2つの条件(都道府県,動物園or水族館)を選択して探せる。</p>
  <p>「エリア・地図検索」>> エリア名・地図をクリックorタップして探せる。</p>
  <img width="243" alt="トップページ" src="https://user-images.githubusercontent.com/77490765/121620820-f1330780-caa5-11eb-9453-06c345ea8b92.png">

  ### キーワード検索の結果
  <img width="478" alt="キーワード検索" src="https://user-images.githubusercontent.com/77490765/121621163-951cb300-caa6-11eb-8e8d-6fdb274f52f5.png">

  ### カテゴリー検索の結果
  <img width="460" alt="カテゴリー検索" src="https://user-images.githubusercontent.com/77490765/121634386-6828ca00-cabf-11eb-9d87-fb3f04378fae.png">

  ### エリア・地図検索の結果
  <img width="474" alt="エリア・地図検索" src="https://user-images.githubusercontent.com/77490765/121634408-71b23200-cabf-11eb-9b8f-dcef0ecd0a44.png">

  ## 動物園・水族館の詳細ページ
  <p>施設の詳細ページでは、以下の概要情報を確認することができます。</p>
  <p>「施設名称」>> [正式名称]と[ふりがな]</p>
  <p>「施設概要」>> [説明文]と[見所ポイント]</p>
  <p>「いきもの情報」>> [飼育規模]と[注目生物(4種)]</p>
  <p>「所在地」>> [住所]と[Google Map]</p>
  <p>「公式Webページリンク」>> 公式情報へすぐにアクセスできる。</p>
  <img width="493" alt="施設詳細ページ" src="https://user-images.githubusercontent.com/77490765/121634425-7971d680-cabf-11eb-93de-591d367950d1.png">

  ## ログイン後のユーザー機能
  <p>ログインしたユーザーは以下の機能を利用することができます。</p>
  <p>「レビュー投稿機能」>> 特定施設のコメントを投稿できる。</p>
  <p>「ベストショット投稿機能」>> 特定施設の写真を投稿できる。</p>
  <p>「施設お気に入り機能」>> 気になる施設を登録できる。</p>
  <p>「ベストショットいいね機能」>> 良いと感じた写真を評価できる。</p>

  ### レビュー投稿機能
  <img width="565" alt="レビュー投稿機能" src="https://user-images.githubusercontent.com/77490765/121634538-b50ca080-cabf-11eb-92ef-168e10e0b0b5.png">

  ### ベストショット投稿機能
  <img width="480" alt="ベストショット投稿機能" src="https://user-images.githubusercontent.com/77490765/121634567-c05fcc00-cabf-11eb-9dd3-507a7068ec07.png">

  ### 施設お気に入り機能
  <img width="492" alt="施設お気に入り機能" src="https://user-images.githubusercontent.com/77490765/121634588-ca81ca80-cabf-11eb-9edf-ac4f0cef9997.png">

  ### ベストショットいいね機能
  <img width="465" alt="ベストショットいいね機能" src="https://user-images.githubusercontent.com/77490765/121634604-d1104200-cabf-11eb-8829-aa8cb41c995c.png">

# 目指した課題解決
  ### 「多種多様な生物との出会い」で安らぎと癒しを感じて欲しい。
  <p>普段の生活では出会うことがない多種多様な生物を観察していると、</p>
  <p>面白い発見があったり、穏やかな感情が芽生えたりします。</p>
  <p>動物園・水族館で味わえる安らぎと癒しをもっとたくさんの人々に広めるため、</p>
  <p>このアプリケーションで足を運ぶキッカケを創出します。</p>
  <p>分かりやすい検索機能、興味関心を引き出すコンテンツを目指しています。</p>

  ### 「生物との思い出」を共有し、魅力を広める場所をつくりたい。
  <p>動物園・水族館で感じたこと、お気に入りの写真を共有することは、</p>
  <p>他の利用者がその施設に訪れるキッカケになります。</p>
  <p>楽しめるポイントや気になる動物などの情報は、</p>
  <p>たくさんの人を引きつけることができます。</p>
  <p>動物愛の情報発信を行えるアプリケーションを目指します。 </p> 
  
# 実装機能・導入技術
  <p>◆ユーザー登録・ログイン機能</p>
  <p>[Gem:devise]</p>
  
  <p>◆施設情報(動物園,水族館)CSVデータ取り込み</p>
  <p>[Gem:seed-fu]</p>

  <p>◆施設お気に入り機能</p>

  <p>◆Google Map表示機能(JavaScript)</p>
  <p>[API:Maps JavaScript API]</p>
  
  <p>◆施設情報のキーワード検索機能</p>
  
  <p>◆施設情報のカテゴリー検索機能</p>
  
  <p>◆施設情報の地図・エリア検索機能(クリッカブルマップ)</p>

  <p>◆レビュー投稿機能</p>
  
  <p>◆ベストショット投稿機能</p>
  <p>・選択画像プレビュー機能(JavaScript)</p>
  <p>[Gem:mini_magick,image_processing]</p>

  <p>◆ベストショットいいね機能</p>
  
  <p>◆投稿内容一覧の分割表示機能(ページネーション)</p>
  <p>[Gem:kaminari]</p>
  
  <p>◆各情報(ユーザー,レビュー,ベストショット)の編集削除機能</p>
  
  <p>◆英語表記箇所の日本語化</p>
  <p>[Gem:rails-i18n]</p>

  <p>◆パンくずリスト</p>
  <p>[Gem:gretel]</p>

  <p>◆お問い合わせフォーム(Googleフォーム)</p>

  <p>◆SEO対策metaタグ</p>
  <p>[Gem:meta-tags]</p>

  <p>◆SEO対策サイトマップ</p>
  <p>[Gem:sitemap_generator]</p>

# 開発環境・使用技術
  ## 開発環境
   <p>Ruby：2.6.5</p> 
   <p>Ruby on Rails：6.0.0</p> 

  ## 使用言語
   <p>HTML/CSS</p> 
   <p>JavaScript</p> 
   <p>Ruby</p> 

  ## 使用API
   <p>Google：Maps JavaScript API</p> 

  ## データベース
   <p>開発環境：MySQL</p> 
   <p>本番環境：MariaDB</p> 

  ## 本番環境
   <p>デプロイツール：Capistrano</p>
   <p>アプリケーションサーバー：Unicorn</p>
   <p>Webサーバー：Nginx</p>
   <p>インフラ：AWS(EC2)</p>
   <p>ストレージ：AWS(S3)</p>
   <p>ドメイン取得：AWS(Route53)</p>
   <p>SSL証明書：AWS(ACM)</p>

  ## バージョン管理
   <p>GitHub</p> 
   <p>GitHub Desktop</p> 

  ## コードテスト
   <p>RSpec</p> 

  ## テキストエヂィタ
   <p>Visual Studio Code</p> 

# データベース設計
  ## usersテーブル
| Column             | Type    | Options     | Options2     |
| ------------------ | ------- | ----------- | ------------ |
| nickname           | string  | null: false | unique: true |
| gender_id          | integer | null: false |              |
| email              | string  | null: false | unique: true |
| password           | string  | null: false |              |
  ### usersテーブルのAssociation
- has_many : comments
- has_many : pictures
- has_many : favorites
- has_many : goods
  ## facilitiesテーブル
| Column           | Type    | Options     |
| ---------------- | --------| ----------- |
| name             | string  | null: false |
| kananame         | string  | null: false |
| hiraname         | string  | null: false |
| category_id      | integer | null: false |
| region_id        | integer | null: false |
| prefectures_id   | integer | null: false |
| address          | string  | null: false |
| official_website | string  |             |
| latitude         | float   | null: false |
| longitude        | float   | null: false |
| business_data    | text    |             |
| closed_data      | text    |             |
| animal_data      | text    |             |
| attention_point  | text    |             |
  ### facilitiesテーブルのAssociation
- has_many : comments
- has_many : pictures
- has_many : favorites
  ## commentsテーブル
| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| text     | text       | null: false       |
| user     | references | foreign_key: true |
| facility | references | foreign_key: true |
  ### commentsテーブルのAssociation
- belongs_to : user
- belongs_to : facility
  ## picturesテーブル
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| title       | string     | null: false       |
| description | text       |                   |
| user        | references | foreign_key: true |
| facility    | references | foreign_key: true |
  ### picturesテーブルのAssociation
- belongs_to : user
- belongs_to : facility
- has_many : goods
  ## favoritesテーブル
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| facility    | references | foreign_key: true |
  ### favoritesテーブルのAssociation
- belongs_to : user
- belongs_to : facility
  ## goodsテーブル
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| picture     | references | foreign_key: true |
  ### goodsテーブルのAssociation
- belongs_to : user
- belongs_to : picture