# アプリケーション名
  <p>animal-connection(あにまるコネクション)</p>
  <img width="204" alt="アプリアイコン" src="https://user-images.githubusercontent.com/77490765/119881291-15e89480-bf68-11eb-998c-56177644f0ce.png">
  
# アプリケーション概要
  <p>日本全国281ヶ所の動物園・水族館を3つの検索方法で探すことができます。</p>
  <p>「キーワード検索」>> 漢字,ひらがな,カタカナで探せる。</p>
  <p>「カテゴリー検索」>> 2つの条件(都道府県,動物園or水族館)を選択して探せる。</p>
  <p>「エリア・地図検索」>> エリア名・地図をクリックorタップして探せる。</p>
  <img width="783" alt="トップページ" src="https://user-images.githubusercontent.com/77490765/119881521-57793f80-bf68-11eb-9e50-3158fedb4d32.png">
  <p></p>
  <p>キーワード検索の結果</p>
  <img width="1627" alt="キーワード検索" src="https://user-images.githubusercontent.com/77490765/119883842-f3a44600-bf6a-11eb-8c20-11bf89564e45.png">
  <p></p>
  <p>カテゴリー検索の結果</p>
  <img width="1609" alt="カテゴリー検索" src="https://user-images.githubusercontent.com/77490765/119884326-75946f00-bf6b-11eb-868a-2dfa61aa1ce1.png">
  <p></p>
  <p>エリア・地図検索の結果</p>
  <img width="1678" alt="エリア・地図検索" src="https://user-images.githubusercontent.com/77490765/119884390-8cd35c80-bf6b-11eb-8fc3-d1d42026aa9a.png">
  <p></p>

  施設詳細ページでは、訪問時の参考情報となる所在地と地図を表示しています。
  さらに、訪問意欲を掻き立てる「施設概要」「いきもの情報」を閲覧できます。
  
  アプリケーションにログインすることで以下の機能を利用できます。
   「レビュー投稿機能」>> 該当施設のコメントを投稿できる。
   「写真投稿機能」>> 該当施設でのベストショットを投稿できる。
   「お気に入り機能」>> 気になる施設を登録できる。
   「いいね機能」>> 良いと感じたベストショットを評価できる。
  投稿内容は、他のサイト利用者が自由に閲覧することができます。
  「いきもの」への関心や理解をたくさんの人々へ広げるアプリケーションです。
  
# URL
  https://access.animal-connection.info

# テスト用アカウント
  ## ニックネーム
   山田一郎
  ## メールアドレス
   test11@example.com
  ## パスワード
   test11

# 利用方法
  トップページでは3つの検索方法で直感的に施設を検索できます。

  施設詳細ページでは該当施設の[基本情報]と[投稿内容]が確認できます。
  施設詳細ページの投稿ボタンをクリックすると、レビュー投稿・写真投稿の入力画面に遷移します。
   ※投稿機能はユーザーログインが必要です。

  投稿したレビューは、施設詳細ページ,ユーザー固有ページに一覧表示されます。
  投稿した写真は、施設詳細ページ,ユーザー固有ページ,トップページに一覧表示されます。
  トップページには直近で投稿された新規投稿写真が一覧表示されます。

  [ユーザー情報・レビュー情報の変更・削除画面]は、マイページから遷移できます。
  [写真情報の変更・削除画面]は、写真詳細ページから遷移できます。
  
  施設詳細ページでは[お気に入りボタン]でお気に入り登録することができます。
  写真詳細ページでは[いいねボタン]でいいね登録することができます。
  [登録内容の一覧画面]は、マイページから遷移できます。

# 目指した課題解決
  ## 非日常の「多種多様な生物との出会い」で安らぎと癒しを感じて欲しい。
  普段の生活では出会うことがない多種多様な生物を観察していると、
  面白い発見があったり、穏やかな感情が芽生えたりします。
  動物園・水族館で味わえる安らぎと癒しをもっとたくさんの人々に広めるため、
  このアプリケーションで足を運ぶキッカケを創出します。
  分かりやすい検索機能、興味関心を引き出すコンテンツを目指しています。
  ## 「生物との思い出」を共有し、魅力を広める場所をつくりたい。
  動物園・水族館で感じたこと、お気に入りの写真を共有することは、
  他の利用者がその施設に訪れるキッカケになります。
  楽しめるポイントや気になる動物などの情報は、
  たくさんの人を引きつけることができます。
  動物愛の情報発信を行えるアプリケーションを目指します。  
  
# 洗い出した要件
  ◆ユーザー固有ページ(マイページ・ユーザーページ)
  ◆ユーザー登録・情報の編集削除機能
  ◆動物園・水族館検索機能
  ◆施設詳細ページ
  ◆施設お気に入り機能
  ◆レビュー投稿・情報の編集削除機能
  ◆写真投稿・情報の編集削除機能
  ◆写真詳細ページ
  ◆写真いいね機能
  ◆情報の修正要望依頼フォーム
  
# 実装した機能についてのGIFと説明
  ## ユーザー登録機能
  ![ユーザーログイン新規登録画面](https://user-images.githubusercontent.com/77490765/115163112-3eb47900-a0e2-11eb-98c1-fd526e3d924f.png)
  新規登録ページとログインページを作成し、
  容易なユーザー登録を可能にしました。
  ## 動物園・水族館検索機能
  ![検索機能と検索結果画面](https://user-images.githubusercontent.com/77490765/115163161-71f70800-a0e2-11eb-8dbc-709fe3f54a3c.png)
  トップページに検索フォームを作成しました。
  プルダウン式の選択肢で気軽に検索ができます。
  検索結果ページはシンプルな表示を意識して作成しました。
  ## 修正要望依頼フォーマット
  ![要望修正フォーム](https://user-images.githubusercontent.com/77490765/115163169-8935f580-a0e2-11eb-9305-a559e7c40d98.png)
  フッター部分にgoogleフォームへのリンクを作成しました。
  わかりやすいgoogleフォームを用いて、
  利用者から情報提供と修正要望を受け取れます。
  
# 実装予定の機能
  ◆ページネーション機能
  
# 開発環境・使用技術
  ## 開発環境
   Ruby：2.6.5
   Ruby on Rails：6.0.0
  ## 使用言語
   Ruby,HTML,CSS,JavaScript
  ## 使用API
   Google：Maps JavaScript API
  ## データベース
   開発環境：MySQL
   本番環境：MariaDB
  ## 本番環境
   デプロイツール：Capistrano
   デプロイ：AWS(EC2)
   ストレージ：AWS(S3)
   アプリケーションサーバー：Unicorn
   Webサーバー：Nginx
   ドメイン取得：AWS(Route53)
   SSL証明書：AWS(ACM)
  ## ソースコード管理
   GitHub,GitHub Desktop
  ## 言語テストツール
   RSpec
  ## テキストエヂィタ
   Visual Studio Code

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