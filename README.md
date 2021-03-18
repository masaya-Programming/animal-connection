# アプリケーション名
  animal-connection(あにまるコネクション)
  
# アプリケーション概要
  日本全国にある動物園,水族館の魅力を来場者同士で共有できるアプリケーションです。
  ユーザー登録をすることで、特定の施設毎に「グッドポイント」をコメント投稿できます。
  さらに「ベストショット」として画像投稿することもできます。
  リピートしたい施設を記録するための「お気に入り機能」、
  印象に残ったベストショットに共感できる「画像いいね機能」を使用することもできます。
  特定の都道府県を指定することで、動物園や水族館を検索できる「施設検索機能」は
  ユーザー登録をしなくても利用することができます。
  
# URL
  デプロイ後に公開URLを記述します。
  
# Basic認証
  ユーザー名:animal
  パスワード:55555

# テスト用アカウント
  Email:
  Pass:
  
# 利用方法
  ◆ユーザー新規登録機能

  ◆ユーザーログイン機能

  ◆ユーザーログアウト機能

  ◆ユーザー削除機能

  ◆施設検索機能

  ◆コメント投稿機能(グッドポイント)

  ◆画像投稿機能(ベストショット)

  ◆お気に入り機能

  ◆画像いいね機能

  
# 目指した課題解決
  ◆動物園や水族館に足を運ぶキッカケを提供する。

  ◆施設を楽しんだ記憶を記録する。

  
# 洗い出した要件
  ◆ユーザー新規登録機能
  ◆ユーザーログイン機能
  ◆ユーザーログアウト機能
  ◆ユーザー削除機能
  ◆施設検索機能
  ◆コメント投稿機能(グッドポイント)
  ◆画像投稿機能(ベストショット)
  ◆お気に入り機能
  ◆画像いいね機能
  
# 実装した機能についてのGIFと説明
  
  
# 実装予定の機能
  
  
# データベース設計
  ## usersテーブル
| Column             | Type    | Options     | Options2     |
| ------------------ | ------- | ----------- | ------------ |
| nickname           | string  | null: false | unique: true |
| email              | string  | null: false | unique: true |
| encrypted_password | string  | null: false |              |
| gender_id          | integer | null: false |              |
  ### usersテーブルのAssociation
- has_many : comments
- has_many : pictures
  ## facilitiesテーブル
| Column           | Type    | Options     |
| ---------------- | --------| ----------- |
| name             | string  | null: false |
| kananame         | string  | null: false |
| category_id      | integer | null: false |
| prefectures_id   | integer | null: false |
| address          | string  | null: false |
| official_website | string  |             |
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
  
  