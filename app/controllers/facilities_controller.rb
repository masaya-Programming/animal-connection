class FacilitiesController < ApplicationController
  def index
    @pictures = Picture.order(id: :DESC).limit(12)
    @pictures_count = Picture.order(id: :DESC).count
  end

  def show
    @facility = Facility.find(params[:id])
    @comments = Comment.where(facility_id: @facility.id).order('id DESC')
    @comments_count = Comment.where(facility_id: @facility.id).count
    @pictures = Picture.where(facility_id: @facility.id).order('id DESC')
    @pictures_count = Picture.where(facility_id: @facility.id).count
    @google_key = ENV['GMP_API_KEY']
  end

  def search
    if params[:category_id] == '0' && params[:prefectures_id] == '0'
      redirect_to root_path
    else
      @category_id = params[:category_id]
      @category_name = Category.find(@category_id).name
      @prefectures_id = params[:prefectures_id]
      @prefectures_name = Prefectures.find(@prefectures_id).name
      @facility = Facility.search(params[:category_id], params[:prefectures_id])
    end
  end

  def keysearch
    if params[:keyword] == ''
      redirect_to root_path
    else
      @keyword = params[:keyword]
      @facility = Facility.keysearch(params[:keyword])
    end
  end

  def hokkaidotohoku
    @hokkaido_zoo = Facility.where(prefectures_id: '1').where(category_id: '1').count
    @hokkaido_aquarium = Facility.where(prefectures_id: '1').where(category_id: '2').count

    @aomori_zoo = Facility.where(prefectures_id: '2').where(category_id: '1').count
    @aomori_aquarium = Facility.where(prefectures_id: '2').where(category_id: '2').count

    @iwate_zoo = Facility.where(prefectures_id: '3').where(category_id: '1').count
    @iwate_aquarium = Facility.where(prefectures_id: '3').where(category_id: '2').count

    @miyagi_zoo = Facility.where(prefectures_id: '4').where(category_id: '1').count
    @miyagi_aquarium = Facility.where(prefectures_id: '4').where(category_id: '2').count

    @akita_zoo = Facility.where(prefectures_id: '5').where(category_id: '1').count
    @akita_aquarium = Facility.where(prefectures_id: '5').where(category_id: '2').count

    @yamagata_zoo = Facility.where(prefectures_id: '6').where(category_id: '1').count
    @yamagata_aquarium = Facility.where(prefectures_id: '6').where(category_id: '2').count

    @fukushima_zoo = Facility.where(prefectures_id: '7').where(category_id: '1').count
    @fukushima_aquarium = Facility.where(prefectures_id: '7').where(category_id: '2').count
  end

  def kanto
    @ibaraki_zoo = Facility.where(prefectures_id: '8').where(category_id: '1').count
    @ibaraki_aquarium = Facility.where(prefectures_id: '8').where(category_id: '2').count

    @tochigi_zoo = Facility.where(prefectures_id: '9').where(category_id: '1').count
    @tochigi_aquarium = Facility.where(prefectures_id: '9').where(category_id: '2').count

    @gunma_zoo = Facility.where(prefectures_id: '10').where(category_id: '1').count
    @gunma_aquarium = Facility.where(prefectures_id: '10').where(category_id: '2').count

    @saitama_zoo = Facility.where(prefectures_id: '11').where(category_id: '1').count
    @saitama_aquarium = Facility.where(prefectures_id: '11').where(category_id: '2').count

    @chiba_zoo = Facility.where(prefectures_id: '12').where(category_id: '1').count
    @chiba_aquarium = Facility.where(prefectures_id: '12').where(category_id: '2').count

    @tokyo_zoo = Facility.where(prefectures_id: '13').where(category_id: '1').count
    @tokyo_aquarium = Facility.where(prefectures_id: '13').where(category_id: '2').count

    @kanagawa_zoo = Facility.where(prefectures_id: '14').where(category_id: '1').count
    @kanagawa_aquarium = Facility.where(prefectures_id: '14').where(category_id: '2').count
  end

  def chubu
    @niigata_zoo = Facility.where(prefectures_id: '15').where(category_id: '1').count
    @niigata_aquarium = Facility.where(prefectures_id: '15').where(category_id: '2').count

    @toyama_zoo = Facility.where(prefectures_id: '16').where(category_id: '1').count
    @toyama_aquarium = Facility.where(prefectures_id: '16').where(category_id: '2').count

    @ishikawa_zoo = Facility.where(prefectures_id: '17').where(category_id: '1').count
    @ishikawa_aquarium = Facility.where(prefectures_id: '17').where(category_id: '2').count

    @fukui_zoo = Facility.where(prefectures_id: '18').where(category_id: '1').count
    @fukui_aquarium = Facility.where(prefectures_id: '18').where(category_id: '2').count

    @yamanashi_zoo = Facility.where(prefectures_id: '19').where(category_id: '1').count
    @yamanashi_aquarium = Facility.where(prefectures_id: '19').where(category_id: '2').count

    @nagano_zoo = Facility.where(prefectures_id: '20').where(category_id: '1').count
    @nagano_aquarium = Facility.where(prefectures_id: '20').where(category_id: '2').count

    @gifu_zoo = Facility.where(prefectures_id: '21').where(category_id: '1').count
    @gifu_aquarium = Facility.where(prefectures_id: '21').where(category_id: '2').count

    @shizuoka_zoo = Facility.where(prefectures_id: '22').where(category_id: '1').count
    @shizuoka_aquarium = Facility.where(prefectures_id: '22').where(category_id: '2').count

    @aichi_zoo = Facility.where(prefectures_id: '23').where(category_id: '1').count
    @aichi_aquarium = Facility.where(prefectures_id: '23').where(category_id: '2').count
  end

  def kinki
    @mie_zoo = Facility.where(prefectures_id: '24').where(category_id: '1').count
    @mie_aquarium = Facility.where(prefectures_id: '24').where(category_id: '2').count

    @shiga_zoo = Facility.where(prefectures_id: '25').where(category_id: '1').count
    @shiga_aquarium = Facility.where(prefectures_id: '25').where(category_id: '2').count

    @kyoto_zoo = Facility.where(prefectures_id: '26').where(category_id: '1').count
    @kyoto_aquarium = Facility.where(prefectures_id: '26').where(category_id: '2').count

    @osaka_zoo = Facility.where(prefectures_id: '27').where(category_id: '1').count
    @osaka_aquarium = Facility.where(prefectures_id: '27').where(category_id: '2').count

    @hyogo_zoo = Facility.where(prefectures_id: '28').where(category_id: '1').count
    @hyogo_aquarium = Facility.where(prefectures_id: '28').where(category_id: '2').count

    @nara_zoo = Facility.where(prefectures_id: '29').where(category_id: '1').count
    @nara_aquarium = Facility.where(prefectures_id: '29').where(category_id: '2').count

    @wakayama_zoo = Facility.where(prefectures_id: '30').where(category_id: '1').count
    @wakayama_aquarium = Facility.where(prefectures_id: '30').where(category_id: '2').count
  end

  def chugokushikoku
    @tottori_zoo = Facility.where(prefectures_id: '31').where(category_id: '1').count
    @tottori_aquarium = Facility.where(prefectures_id: '31').where(category_id: '2').count

    @shimane_zoo = Facility.where(prefectures_id: '32').where(category_id: '1').count
    @shimane_aquarium = Facility.where(prefectures_id: '32').where(category_id: '2').count

    @okayama_zoo = Facility.where(prefectures_id: '33').where(category_id: '1').count
    @okayama_aquarium = Facility.where(prefectures_id: '33').where(category_id: '2').count

    @hiroshima_zoo = Facility.where(prefectures_id: '34').where(category_id: '1').count
    @hiroshima_aquarium = Facility.where(prefectures_id: '34').where(category_id: '2').count

    @yamaguchi_zoo = Facility.where(prefectures_id: '35').where(category_id: '1').count
    @yamaguchi_aquarium = Facility.where(prefectures_id: '35').where(category_id: '2').count

    @tokushima_zoo = Facility.where(prefectures_id: '36').where(category_id: '1').count
    @tokushima_aquarium = Facility.where(prefectures_id: '36').where(category_id: '2').count

    @kagawa_zoo = Facility.where(prefectures_id: '37').where(category_id: '1').count
    @kagawa_aquarium = Facility.where(prefectures_id: '37').where(category_id: '2').count

    @ehime_zoo = Facility.where(prefectures_id: '38').where(category_id: '1').count
    @ehime_aquarium = Facility.where(prefectures_id: '38').where(category_id: '2').count

    @kochi_zoo = Facility.where(prefectures_id: '39').where(category_id: '1').count
    @kochi_aquarium = Facility.where(prefectures_id: '39').where(category_id: '2').count
  end

  def kyushuokinawa
    @fukuoka_zoo = Facility.where(prefectures_id: '40').where(category_id: '1').count
    @fukuoka_aquarium = Facility.where(prefectures_id: '40').where(category_id: '2').count

    @saga_zoo = Facility.where(prefectures_id: '41').where(category_id: '1').count
    @saga_aquarium = Facility.where(prefectures_id: '41').where(category_id: '2').count

    @nagasaki_zoo = Facility.where(prefectures_id: '42').where(category_id: '1').count
    @nagasaki_aquarium = Facility.where(prefectures_id: '42').where(category_id: '2').count

    @kumamoto_zoo = Facility.where(prefectures_id: '43').where(category_id: '1').count
    @kumamoto_aquarium = Facility.where(prefectures_id: '43').where(category_id: '2').count

    @oita_zoo = Facility.where(prefectures_id: '44').where(category_id: '1').count
    @oita_aquarium = Facility.where(prefectures_id: '44').where(category_id: '2').count

    @miyazaki_zoo = Facility.where(prefectures_id: '45').where(category_id: '1').count
    @miyazaki_aquarium = Facility.where(prefectures_id: '45').where(category_id: '2').count

    @kagoshima_zoo = Facility.where(prefectures_id: '46').where(category_id: '1').count
    @kagoshima_aquarium = Facility.where(prefectures_id: '46').where(category_id: '2').count

    @okinawa_zoo = Facility.where(prefectures_id: '47').where(category_id: '1').count
    @okinawa_aquarium = Facility.where(prefectures_id: '47').where(category_id: '2').count
  end

  def spot
    @category_id = params[:category_id]
    @category_name = Category.find(@category_id).name
    @prefectures_id = params[:prefectures_id]
    @prefectures_name = Prefectures.find(@prefectures_id).name
    @facility = Facility.search(params[:category_id], params[:prefectures_id])
    @facility_first = @facility[0]
    @region = @facility_first.region.name
  end
end
