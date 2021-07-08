## bundle exec rspec spec/requests/facilities_request_spec.rb
require 'rails_helper'

RSpec.describe 'Facilities', type: :request do
  before do
    @facility = FactoryBot.create(:facility)
    sleep(0.5)
  end

  describe '施設関連のリクエスト' do
    context 'facilities#index' do
      it 'トップページが表示できること' do
        get facilities_path
        expect(response.body).to include 'トップページ'
      end
    end

    context 'facilities#toppicturelist' do
      it 'トップページ_新規投稿ベストショットの一覧ページが表示できること' do
        get toppicturelist_facilities_path
        expect(response.body).to include '新規ベストショットリスト'
      end
    end

    context 'facilities#show' do
      it '施設詳細ページが表示できること' do
        get facility_path(@facility.id)
        expect(response.body).to include "#{@facility.name}の"
      end
    end

    context 'facilities#facilitycommentlist' do
      it '施設詳細ページ_新規投稿レビューの一覧ページが表示できること' do
        get facilitycommentlist_facility_path(@facility.id)
        expect(response.body).to include "#{@facility.name}のレビューリスト"
      end
    end

    context 'facilities#facilitypicturelist' do
      it '施設詳細ページ_新規投稿ベストショットの一覧ページが表示できること' do
        get facilitypicturelist_facility_path(@facility.id)
        expect(response.body).to include "#{@facility.name}のベストショットリスト"
      end
    end

    context 'facilities#facilitypicturelist' do
      it '北海道・東北エリアページが表示できること' do
        get hokkaidotohoku_facilities_path
        expect(response.body).to include '北海道・東北エリア'
      end
    end

    context 'facilities#facilitypicturelist' do
      it '関東エリアページが表示できること' do
        get kanto_facilities_path
        expect(response.body).to include '関東エリア'
      end
    end

    context 'facilities#facilitypicturelist' do
      it '中部エリアページが表示できること' do
        get chubu_facilities_path
        expect(response.body).to include '中部エリア'
      end
    end

    context 'facilities#facilitypicturelist' do
      it '近畿エリアページが表示できること' do
        get kinki_facilities_path
        expect(response.body).to include '近畿エリア'
      end
    end

    context 'facilities#facilitypicturelist' do
      it '中国・四国エリアページが表示できること' do
        get chugokushikoku_facilities_path
        expect(response.body).to include '中国・四国エリア'
      end
    end

    context 'facilities#facilitypicturelist' do
      it '九州・沖縄エリアページが表示できること' do
        get kyushuokinawa_facilities_path
        expect(response.body).to include '九州・沖縄エリア'
      end
    end

end
