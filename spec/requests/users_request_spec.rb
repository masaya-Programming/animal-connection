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
      it 'ユーザー新規登録画面が表示できること' do
        get new_user_registration_path
        expect(response.body).to include 'ユーザー新規登録'
      end
    end

    context 'users/sessions#new' do
      it 'ログイン画面が表示できること' do
        get new_user_session_path
        expect(response.body).to include 'ユーザーログイン'
      end
    end

    context 'users#show' do
      it 'ユーザーページ画面が表示できること' do
        get user_path(@user.id)
        expect(response.body).to include 'ユーザーページ'
      end
    end
    
  end
end
