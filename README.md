# アプリケーション名
  animal-connection(あにまるコネクション)
  
# アプリケーション概要
  日本全国282箇所の動物園・水族館を簡単に検索することができます。
  また、施設ごとにレビュー投稿・写真投稿を行えるため、
  他利用者の方々にその魅力を共有することができます。
  このアプリケーションがたくさんの生物と出会うキッカケを創ります。
  
# URL
  http://35.73.118.133/
  
# Basic認証
  ## ユーザー名
  animal
  ## パスワード
  55555

# テスト用アカウント
  ## ニックネーム
   山田一郎
  ## メールアドレス
   test11@example.com
  ## パスワード
   test11

# 利用方法
  トップページのカテゴリ検索機能はアプリケーション利用者が直感的に施設を検索できます。
  検索結果画面の施設名をクリックすると、施設詳細情報・該当施設への投稿内容が確認できます。

  施設詳細ページの投稿ボタンをクリックすると、レビュー投稿・写真投稿の入力画面に遷移します。
  ただし、それぞれの投稿はユーザーログインが必要になります。

  投稿されたレビューは施設詳細ページとユーザー個人ページに一覧表示されます。
  投稿された写真も施設詳細ページとユーザー個人ページに一覧表示されます。
  トップページには直近で投稿された新規投稿写真が一覧表示されます。

  ユーザー情報・レビュー情報の変更・削除画面は、ユーザー個人ページから遷移できます。
  写真情報の変更・削除画面は、写真詳細ページから遷移できます。
  
# 目指した課題解決
  ## 非日常である「多種多様な生物との出会い」で安らぎと癒しを感じて欲しい。
  普段の生活では出会うことがない多種多様な生物を観察していると、
  面白い発見があったり、穏やかな感情が芽生えたりします。
  動物園・水族館で味わえる安らぎと癒しをもっとたくさんの人に広めるため、
  このアプリケーションで足を運ぶキッカケを創出します。
  分かりやすい検索機能、興味関心を引き出すコンテンツを目指しています。
  ## 「生物との思い出」を共有し、魅力を広める場所をつくりたい。
  動物園・水族館で感じたこと、お気に入りの写真を共有することは、
  他の利用者がその施設に訪れるキッカケになります。
  楽しめるポイントや気になる動物などの情報は、
  たくさんの人を引きつけることができます。
  常に情報発信を行うアプリケーションを目指します。  
  
# 洗い出した要件
  ◆動物園・水族館検索機能
  ◆施設詳細情報ページ
  ◆ユーザー登録・情報の編集削除機能
  ◆ユーザー固有ページ(マイページ・ユーザーページ)
  ◆レビュー投稿・情報の編集削除機能
  ◆写真投稿・情報の編集削除機能
  ◆写真詳細ページ
  ◆写真いいね機能
  ◆お気に入り施設の登録機能
  ◆情報の修正要望依頼フォーム
  ◆ページネーション機能
  
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
  ◆パンくずリスト
  ◆お気に入り施設の登録機能
  ◆写真いいね機能
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
  ## facilitiesテーブル
| Column           | Type    | Options     |
| ---------------- | --------| ----------- |
| name             | string  | null: false |
| kananame         | string  | null: false |
| category_id      | integer | null: false |
| region_id        | integer | null: false |
| prefectures_id   | integer | null: false |
| address          | string  | null: false |
| official_website | string  |             |
| latitude         | float   | null: false |
| longitude        | float   | null: false |
  ### facilitiesテーブルのAssociation
- has_many : comments
- has_many : pictures
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
  