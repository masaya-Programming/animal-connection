require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'すべての情報が正しく入力されていると新規登録できる' do
        @user.valid?
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'ニックネームが空だと新規登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end

      it 'ニックネームが2文字以下だと新規登録できない' do
        @user.nickname = '12'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Nickname is too short (minimum is 3 characters)'
      end

      it 'ニックネームが13文字以上だと新規登録できない' do
        @user.nickname = '0123456789012'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Nickname is too long (maximum is 12 characters)'
      end

      it '既に登録済みのニックネームは新規登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.nickname = @user.nickname
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Nickname has already been taken'
      end

      it 'メールアドレスが空だと新規登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it 'メールアドレスに@が含まれていないと新規登録できない' do
        @user.email = 'abc123com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it 'メールアドレスが全角だと新規登録できない' do
        @user.email = 'ａｂｃ１２３＠ｃｏｍ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it '既に登録済みのメールアドレスは新規登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end

      it 'パスワードが空だと新規登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it 'パスワード(再入力)が空だと新規登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'パスワードとパスワード(再入力)が異なっていると新規登録できない' do
        @user.password = '123abc'
        @user.password_confirmation = 'abc123'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'パスワードが5文字以下だと新規登録できない' do
        @user.password = '123ab'
        @user.password_confirmation = '123ab'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end

      it 'パスワードが数字のみだと新規登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'パスワードが英字のみだと新規登録できない' do
        @user.password = 'abcdef'
        @user.password_confirmation = 'abcdef'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'パスワードが全角だと新規登録できない' do
        @user.password = '１２３ＡＢＣ'
        @user.password_confirmation = '１２３ＡＢＣ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it '性別が空だと新規登録できない' do
        @user.gender_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Gender can't be blank"
      end

      it '性別が0だと新規登録できない' do
        @user.gender_id = 0
        @user.valid?
        expect(@user.errors.full_messages).to include 'Gender must be other than 0'
      end
    end
  end
end
