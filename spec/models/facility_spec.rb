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
        expect(@facility.errors.full_messages).to include "Name can't be blank"
      end

      it '施設名(カタカナ)が空だと情報登録できない' do
        @facility.kananame = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Kananame can't be blank"
      end

      it 'カテゴリーが空だと情報登録できない' do
        @facility.category_id = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Category can't be blank"
      end

      it 'カテゴリーが0だと情報登録できない' do
        @facility.category_id = 0
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Category must be other than 0"
      end

      it '都道府県が空だと情報登録できない' do
        @facility.prefectures_id = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Prefectures can't be blank"
      end

      it '都道府県が0だと情報登録できない' do
        @facility.prefectures_id = 0
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Prefectures must be other than 0"
      end

      it '所在地が空だと情報登録できない' do
        @facility.address = ''
        @facility.valid?
        expect(@facility.errors.full_messages).to include "Address can't be blank"
      end
    end
  end
end