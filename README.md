# アプリケーション名
  animal-connection(あにまるコネクション)
  
# アプリケーション概要
  日本全国にある動物園,水族館の魅力を発見でき、それを記録することができるアプリケーションです。
  特定の都道府県を指定することで動物園や水族館を探すことができる「動物園・水族館検索機能」を実装しました。
  また、施設毎の「施設詳細情報ページ」には住所や公式HPリンクがあり、検索結果からすぐにアクセスができます。
  ユーザー登録をすることで、お気に入り施設を記録したり、レビュー投稿、画像投稿することもできます。
  
# URL
  https://animal-connection.herokuapp.com/
  
# Basic認証
  ## ユーザー名
  animal
  ## パスワード
  55555

# テスト用アカウント
  ## ニックネーム

  ## メールアドレス

  ## パスワード

# 利用方法
  ユーザー登録をしなくても「動物園・水族館検索機能」を使用することができます。
  特定の都道府県を指定して検索することができるので、近場の施設を簡単に調べることができます。
  検索結果から「施設詳細ページ」にアクセスすると、住所と公式HPリンクが確認できます。
  
  ユーザー登録をすると、お気に入りの施設を記録できる「お気に入り施設機能」を使用できます。
  また、施設に対するレビューを投稿できる「施設レビュー投稿機能」、
  その施設を5段階評価できる「施設評価機能」、撮影したベストショットを投稿できる「画像投稿機能」、
  好印象をもった投稿画像にいいねできる「画像いいね機能」が利用できます。
  
# 目指した課題解決
  ## 癒しの時間となる「生物との出会い」をつくります。
  気軽に近場の動物園や水族館を調べることができ、
  同時にアクセス方法も確認することができます。
  動物園や水族館へ足を運ぶキッカケを生み出します。
  ## 生物との大切な思い出を記録します。
  楽しい時間を保存するための「画像投稿機能」と
  動物園と水族館に対する「レビュー投稿機能」で、
  当時の記憶を保存できます。
  ## 情報共有で生物への興味を広げます。
  他ユーザーが投稿した画像やレビューを閲覧することで、
  たくさんの施設を訪れる契機をつくります。
  
# 洗い出した要件
  ◆ユーザー登録機能
  ◆ユーザー情報編集機能
  ◆ユーザー情報削除機能
  ◆ユーザーマイページ
  ◆動物園・水族館検索機能
  ◆修正要望依頼フォーム
  ◆施設詳細情報ページ
  ◆お気に入り施設機能
  ◆施設レビュー投稿機能
  ◆施設評価機能(5段階)
  ◆画像投稿機能
  ◆画像いいね機能
  ◆ページネーション機能
  
# 実装した機能についてのGIFと説明
  ## ユーザー登録機能
  https://gyazo.com/ab4ef7e6aafa7d9f7610cfb3fa22c311
  新規登録ページとログインページを作成し、
  容易なユーザー登録を可能にしました。
  ## 動物園・水族館検索機能
  https://gyazo.com/763aa9717bd5bde5bc5705c8a0829c45
  トップページに検索フォームを作成しました。
  プルダウン式の選択肢で気軽に検索ができます。
  検索結果ページはシンプルな表示を意識して作成しました。
  ## 修正要望依頼フォーマット
  https://gyazo.com/723d13cef70d8207a6a4d70f6b2aaee8
  フッター部分にgoogleフォームへのリンクを作成しました。
  わかりやすいgoogleフォームを用いて、
  利用者から情報提供と修正要望を受け取れます。
  
# 実装予定の機能
  ◆ユーザー情報編集機能
  ◆ユーザー情報削除機能
  ◆ユーザーマイページ
  ◆施設詳細情報ページ
  ◆お気に入り施設機能
  ◆施設レビュー投稿機能
  ◆施設評価機能(5段階)
  ◆画像投稿機能
  ◆画像いいね機能
  ◆ページネーション機能
  
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

# ローカルでの動作方法
  