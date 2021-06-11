## bundle exec rspec spec/models/user_spec.rb
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
        expect(@user.errors.full_messages).to include 'ニックネームを入力してください'
      end

      it 'ニックネームが2文字以下だと新規登録できない' do
        @user.nickname = '12'
        @user.valid?
        expect(@user.errors.full_messages).to include 'ニックネームは3文字以上で入力してください'
      end

      it 'ニックネームが13文字以上だと新規登録できない' do
        @user.nickname = '0123456789012'
        @user.valid?
        expect(@user.errors.full_messages).to include 'ニックネームは12文字以内で入力してください'
      end

      it '既に登録済みのニックネームは新規登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.nickname = @user.nickname
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'ニックネームはすでに存在します'
      end

      it 'メールアドレスが空だと新規登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスを入力してください'
      end

      it 'メールアドレスに@が含まれていないと新規登録できない' do
        @user.email = 'abc123com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスは不正な値です'
      end

      it 'メールアドレスが全角だと新規登録できない' do
        @user.email = 'ａｂｃ１２３＠ｃｏｍ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスは不正な値です'
      end

      it '既に登録済みのメールアドレスは新規登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'メールアドレスはすでに存在します'
      end

      it 'パスワードが空だと新規登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end

      it 'パスワード(再入力)が空だと新規登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワード(再入力)を入力してください'
      end

      it 'パスワードとパスワード(再入力)が異なっていると新規登録できない' do
        @user.password = '123abc'
        @user.password_confirmation = 'abc123'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワード(再入力)とパスワードの入力が一致しません'
      end

      it 'パスワードが5文字以下だと新規登録できない' do
        @user.password = '123ab'
        @user.password_confirmation = '123ab'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end

      it 'パスワードが数字のみだと新規登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end

      it 'パスワードが英字のみだと新規登録できない' do
        @user.password = 'abcdef'
        @user.password_confirmation = 'abcdef'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end

      it 'パスワードが全角だと新規登録できない' do
        @user.password = '１２３ＡＢＣ'
        @user.password_confirmation = '１２３ＡＢＣ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end

      it '性別が空だと新規登録できない' do
        @user.gender_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include '性別を入力してください'
      end

      it '性別が0だと新規登録できない' do
        @user.gender_id = 0
        @user.valid?
        expect(@user.errors.full_messages).to include '性別を選択してください'
      end
    end
  end
end
