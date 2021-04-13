require "rails_helper"

RSpec.describe Comment, type: :model do
  before do
    user = FactoryBot.create(:user)
    facility = FactoryBot.create(:facility)
    @comment = FactoryBot.build(:comment, user_id: user.id, facility_id: facility.id)
    sleep(0.5)
  end

  describe 'コメント投稿' do
    context 'コメント投稿できるとき' do
      it 'すべての情報が正しく入力されているとコメント投稿できる' do
        @comment.valid?
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿できないとき' do
      it 'コメント本文が空だとコメント投稿できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Text can't be blank"
      end

      it 'user_idが空だとコメント投稿できない' do
        @comment.user_id = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "User can't be blank"
      end

      it 'facility_idが空だとコメント投稿できない' do
        @comment.facility_id = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Facility can't be blank"
      end
    end
  end
end
