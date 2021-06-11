## bundle exec rspec spec/models/good_spec.rb
require 'rails_helper'

RSpec.describe Good, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @facility = FactoryBot.create(:facility)
    @picture = FactoryBot.create(:picture, user_id: @user.id, facility_id: @facility.id)
    @good = FactoryBot.build(:good, user_id: @user.id, picture_id: @picture.id)
    sleep(0.5)
  end

  describe 'いいね登録' do
    context 'いいね登録できるとき' do
      it 'ユーザー情報と施設情報があればいいね登録できる' do
        @good.valid?
        expect(@good).to be_valid
      end
    end

    context 'いいね登録できないとき' do
      it 'ユーザー情報と施設情報があるが同じ組み合わせが登録されているといいね登録できない' do
        @good.save
        another_user = @user
        another_facility = @facility
        another_picture = @picture
        another_good = FactoryBot.build(:good, user_id: another_user.id, picture_id: another_picture.id)
        another_good.valid?
        expect(another_good.errors.full_messages).to include 'Userはすでに存在します'
      end
    end
  end
end
