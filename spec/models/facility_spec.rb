## bundle exec rspec spec/models/facility_spec.rb
require 'rails_helper'

RSpec.describe Facility, type: :model do
  before do
    @facility = FactoryBot.build(:facility)
  end

  describe '施設情報登録' do
    context '情報登録できるとき' do
      it 'すべての情報が正しく入力されていると情報登録できる' do
        @facility.valid?
        expect(@facility).to be_valid
      end

      it '公式Webサイトが空でも情報登録できる' do
        @facility.official_website = ''
        @facility.valid?
        expect(@facility).to be_valid
      end
    end

    context '情報登録できないとき' do
      it '施設名が空だと情報登録できない' do
        @facility.name = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '施設名を入力してください'
      end

      it '施設名(カタカナ)が空だと情報登録できない' do
        @facility.kananame = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include 'カタカナを入力してください'
      end

      it '施設名(ひらがな)が空だと情報登録できない' do
        @facility.hiraname = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include 'ひらがなを入力してください'
      end

      it 'カテゴリーが空だと情報登録できない' do
        @facility.category_id = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include 'カテゴリーを入力してください'
      end

      it 'カテゴリーが0だと情報登録できない' do
        @facility.category_id = 0
        @facility.valid?
        expect(@facility.errors.full_messages).to include 'カテゴリーを選択してください'
      end

      it '地方が空だと情報登録できない' do
        @facility.region_id = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '地方を入力してください'
      end

      it '地方が0だと情報登録できない' do
        @facility.region_id = 0
        @facility.valid?
        expect(@facility.errors.full_messages).to include '地方を選択してください'
      end

      it '都道府県が空だと情報登録できない' do
        @facility.prefectures_id = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '都道府県を入力してください'
      end

      it '都道府県が0だと情報登録できない' do
        @facility.prefectures_id = 0
        @facility.valid?
        expect(@facility.errors.full_messages).to include '都道府県を選択してください'
      end

      it '所在地が空だと情報登録できない' do
        @facility.address = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '所在地を入力してください'
      end

      it '緯度が空だと情報登録できない' do
        @facility.latitude = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '緯度を入力してください'
      end

      it '経度が空だと情報登録できない' do
        @facility.longitude = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include '経度を入力してください'
      end
    end
  end
end
