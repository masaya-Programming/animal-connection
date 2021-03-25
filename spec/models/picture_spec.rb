require 'rails_helper'

RSpec.describe Picture, type: :model do
  before do
    user = FactoryBot.create(:user)
    facility = FactoryBot.create(:facility)
    @picture = FactoryBot.build(:picture, user_id: user.id, facility_id: facility.id)
    sleep(0.5)
  end

  describe '画像投稿' do
    context '画像投稿できるとき' do
      it 'すべての情報が正しく入力されていると画像投稿できる' do
        @picture.valid?
        expect(@picture).to be_valid
      end

      it '画像説明文が空でも画像投稿できる' do
        @picture.description = ''
        @picture.valid?
        expect(@picture).to be_valid
      end
    end

    context '画像投稿できないとき' do
      it '画像タイトルが空だと画像投稿できない' do
        @picture.title = ''
        @picture.valid?
        expect(@picture.errors.full_messages).to include "Title can't be blank"
      end

      it '画像ファイルが空だと画像投稿できない' do
        @picture.image = nil
        @picture.valid?
        expect(@picture.errors.full_messages).to include "Image can't be blank"
      end

      it 'user_idが空だと画像投稿できない' do
        @picture.user_id = ''
        @picture.valid?
        expect(@picture.errors.full_messages).to include "User can't be blank"
      end

      it 'facility_idが空だと画像投稿できない' do
        @picture.facility_id = ''
        @picture.valid?
        expect(@picture.errors.full_messages).to include "Facility can't be blank"
      end
    end
  end
end
