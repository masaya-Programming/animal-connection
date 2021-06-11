## bundle exec rspec spec/models/favorite_spec.rb
require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @facility = FactoryBot.create(:facility)
    @favorite = FactoryBot.build(:favorite, user_id: @user.id, facility_id: @facility.id)
    sleep(0.5)
  end

  describe 'お気に入り登録' do
    context 'お気に入り登録できるとき' do
      it 'ユーザー情報と施設情報があればお気に入り登録できる' do
        @favorite.valid?
        expect(@favorite).to be_valid
      end
    end

    context 'お気に入り登録できないとき' do
      it 'ユーザー情報と施設情報があるが同じ組み合わせが登録されているとお気に入り登録できない' do
        @favorite.save
        another_user = @user
        another_facility = @facility
        another_favorite = FactoryBot.build(:favorite, user_id: another_user.id, facility_id: another_facility.id)
        another_favorite.valid?
        expect(another_favorite.errors.full_messages).to include 'Userはすでに存在します'
      end
    end
  end
end
