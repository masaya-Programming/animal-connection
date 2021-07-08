## bundle exec rspec spec/requests/users_request_spec.rb
require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before do
    @user = FactoryBot.create(:user)
    @facility = FactoryBot.create(:facility)
    sleep(0.5)
  end

  describe 'ユーザー関連のリクエスト' do
    context 'users/registrations#new' do
      it 'ユーザー新規登録ページが表示できること' do
        get new_user_registration_path
        expect(response.body).to include 'ユーザー新規登録'
      end
    end

    context 'users/sessions#new' do
      it 'ユーザーログインページが表示できること' do
        get new_user_session_path
        expect(response.body).to include 'ユーザーログイン'
      end
    end

    context 'users#show' do
      it 'ユーザーページが表示できること' do
        get user_path(@user.id)
        expect(response.body).to include 'ユーザーページ'
      end
    end

    context 'users#usercommentlist' do
      it 'マイページ・ユーザーページ_新規投稿レビューの一覧ページが表示できること' do
        get usercommentlist_user_path(@user.id)
        expect(response.body).to include 'レビューリスト'
      end
    end

    context 'users#userpicturelist' do
      it 'マイページ・ユーザーページ_新規投稿ベストショットの一覧ページが表示できること' do
        get userpicturelist_user_path(@user.id)
        expect(response.body).to include 'ベストショットリスト'
      end
    end

  end
end
