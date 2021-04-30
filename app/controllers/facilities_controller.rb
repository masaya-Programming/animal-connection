class FacilitiesController < ApplicationController
  def index
    @pictures = Picture.order(id: :DESC)
  end

  def show
    @facility = Facility.find(params[:id])
    @comments = Comment.where(facility_id: @facility.id)
    @comments = @comments.reverse
    @pictures = Picture.where(facility_id: @facility.id)
    @pictures = @pictures.reverse
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
    @hokkaido_zoo = Facility.where(prefectures_id: '1').where(category_id: '1')
    @hokkaido_aquarium = Facility.where(prefectures_id: '1').where(category_id: '2')

    @aomori_zoo = Facility.where(prefectures_id: '2').where(category_id: '1')
    @aomori_aquarium = Facility.where(prefectures_id: '2').where(category_id: '2')

    @iwate_zoo = Facility.where(prefectures_id: '3').where(category_id: '1')
    @iwate_aquarium = Facility.where(prefectures_id: '3').where(category_id: '2')

    @miyagi_zoo = Facility.where(prefectures_id: '4').where(category_id: '1')
    @miyagi_aquarium = Facility.where(prefectures_id: '4').where(category_id: '2')

    @akita_zoo = Facility.where(prefectures_id: '5').where(category_id: '1')
    @akita_aquarium = Facility.where(prefectures_id: '5').where(category_id: '2')

    @yamagata_zoo = Facility.where(prefectures_id: '6').where(category_id: '1')
    @yamagata_aquarium = Facility.where(prefectures_id: '6').where(category_id: '2')

    @fukushima_zoo = Facility.where(prefectures_id: '7').where(category_id: '1')
    @fukushima_aquarium = Facility.where(prefectures_id: '7').where(category_id: '2')
  end

  def kanto
    @ibaraki_zoo = Facility.where(prefectures_id: '8').where(category_id: '1')
    @ibaraki_aquarium = Facility.where(prefectures_id: '8').where(category_id: '2')

    @tochigi_zoo = Facility.where(prefectures_id: '9').where(category_id: '1')
    @tochigi_aquarium = Facility.where(prefectures_id: '9').where(category_id: '2')

    @gunma_zoo = Facility.where(prefectures_id: '10').where(category_id: '1')
    @gunma_aquarium = Facility.where(prefectures_id: '10').where(category_id: '2')

    @saitama_zoo = Facility.where(prefectures_id: '11').where(category_id: '1')
    @saitama_aquarium = Facility.where(prefectures_id: '11').where(category_id: '2')

    @chiba_zoo = Facility.where(prefectures_id: '12').where(category_id: '1')
    @chiba_aquarium = Facility.where(prefectures_id: '12').where(category_id: '2')

    @tokyo_zoo = Facility.where(prefectures_id: '13').where(category_id: '1')
    @tokyo_aquarium = Facility.where(prefectures_id: '13').where(category_id: '2')

    @kanagawa_zoo = Facility.where(prefectures_id: '14').where(category_id: '1')
    @kanagawa_aquarium = Facility.where(prefectures_id: '14').where(category_id: '2')
  end

  def chubu
    @niigata_zoo = Facility.where(prefectures_id: '15').where(category_id: '1')
    @niigata_aquarium = Facility.where(prefectures_id: '15').where(category_id: '2')

    @toyama_zoo = Facility.where(prefectures_id: '16').where(category_id: '1')
    @toyama_aquarium = Facility.where(prefectures_id: '16').where(category_id: '2')

    @ishikawa_zoo = Facility.where(prefectures_id: '17').where(category_id: '1')
    @ishikawa_aquarium = Facility.where(prefectures_id: '17').where(category_id: '2')

    @fukui_zoo = Facility.where(prefectures_id: '18').where(category_id: '1')
    @fukui_aquarium = Facility.where(prefectures_id: '18').where(category_id: '2')

    @yamanashi_zoo = Facility.where(prefectures_id: '19').where(category_id: '1')
    @yamanashi_aquarium = Facility.where(prefectures_id: '19').where(category_id: '2')

    @nagano_zoo = Facility.where(prefectures_id: '20').where(category_id: '1')
    @nagano_aquarium = Facility.where(prefectures_id: '20').where(category_id: '2')

    @gifu_zoo = Facility.where(prefectures_id: '21').where(category_id: '1')
    @gifu_aquarium = Facility.where(prefectures_id: '21').where(category_id: '2')

    @shizuoka_zoo = Facility.where(prefectures_id: '22').where(category_id: '1')
    @shizuoka_aquarium = Facility.where(prefectures_id: '22').where(category_id: '2')

    @aichi_zoo = Facility.where(prefectures_id: '23').where(category_id: '1')
    @aichi_aquarium = Facility.where(prefectures_id: '23').where(category_id: '2')
  end

  def kinki
    @mie_zoo = Facility.where(prefectures_id: '24').where(category_id: '1')
    @mie_aquarium = Facility.where(prefectures_id: '24').where(category_id: '2')

    @shiga_zoo = Facility.where(prefectures_id: '25').where(category_id: '1')
    @shiga_aquarium = Facility.where(prefectures_id: '25').where(category_id: '2')

    @kyoto_zoo = Facility.where(prefectures_id: '26').where(category_id: '1')
    @kyoto_aquarium = Facility.where(prefectures_id: '26').where(category_id: '2')

    @osaka_zoo = Facility.where(prefectures_id: '27').where(category_id: '1')
    @osaka_aquarium = Facility.where(prefectures_id: '27').where(category_id: '2')

    @hyogo_zoo = Facility.where(prefectures_id: '28').where(category_id: '1')
    @hyogo_aquarium = Facility.where(prefectures_id: '28').where(category_id: '2')

    @nara_zoo = Facility.where(prefectures_id: '29').where(category_id: '1')
    @nara_aquarium = Facility.where(prefectures_id: '29').where(category_id: '2')

    @wakayama_zoo = Facility.where(prefectures_id: '30').where(category_id: '1')
    @wakayama_aquarium = Facility.where(prefectures_id: '30').where(category_id: '2')
  end

  def chugokushikoku
    @tottori_zoo = Facility.where(prefectures_id: '31').where(category_id: '1')
    @tottori_aquarium = Facility.where(prefectures_id: '31').where(category_id: '2')

    @shimane_zoo = Facility.where(prefectures_id: '32').where(category_id: '1')
    @shimane_aquarium = Facility.where(prefectures_id: '32').where(category_id: '2')

    @okayama_zoo = Facility.where(prefectures_id: '33').where(category_id: '1')
    @okayama_aquarium = Facility.where(prefectures_id: '33').where(category_id: '2')

    @hiroshima_zoo = Facility.where(prefectures_id: '34').where(category_id: '1')
    @hiroshima_aquarium = Facility.where(prefectures_id: '34').where(category_id: '2')

    @yamaguchi_zoo = Facility.where(prefectures_id: '35').where(category_id: '1')
    @yamaguchi_aquarium = Facility.where(prefectures_id: '35').where(category_id: '2')

    @tokushima_zoo = Facility.where(prefectures_id: '36').where(category_id: '1')
    @tokushima_aquarium = Facility.where(prefectures_id: '36').where(category_id: '2')

    @kagawa_zoo = Facility.where(prefectures_id: '37').where(category_id: '1')
    @kagawa_aquarium = Facility.where(prefectures_id: '37').where(category_id: '2')

    @ehime_zoo = Facility.where(prefectures_id: '38').where(category_id: '1')
    @ehime_aquarium = Facility.where(prefectures_id: '38').where(category_id: '2')

    @kochi_zoo = Facility.where(prefectures_id: '39').where(category_id: '1')
    @kochi_aquarium = Facility.where(prefectures_id: '39').where(category_id: '2')
  end

  def kyushuokinawa
    @fukuoka_zoo = Facility.where(prefectures_id: '40').where(category_id: '1')
    @fukuoka_aquarium = Facility.where(prefectures_id: '40').where(category_id: '2')

    @saga_zoo = Facility.where(prefectures_id: '41').where(category_id: '1')
    @saga_aquarium = Facility.where(prefectures_id: '41').where(category_id: '2')

    @nagasaki_zoo = Facility.where(prefectures_id: '42').where(category_id: '1')
    @nagasaki_aquarium = Facility.where(prefectures_id: '42').where(category_id: '2')

    @kumamoto_zoo = Facility.where(prefectures_id: '43').where(category_id: '1')
    @kumamoto_aquarium = Facility.where(prefectures_id: '43').where(category_id: '2')

    @oita_zoo = Facility.where(prefectures_id: '44').where(category_id: '1')
    @oita_aquarium = Facility.where(prefectures_id: '44').where(category_id: '2')

    @miyazaki_zoo = Facility.where(prefectures_id: '45').where(category_id: '1')
    @miyazaki_aquarium = Facility.where(prefectures_id: '45').where(category_id: '2')

    @kagoshima_zoo = Facility.where(prefectures_id: '46').where(category_id: '1')
    @kagoshima_aquarium = Facility.where(prefectures_id: '46').where(category_id: '2')

    @okinawa_zoo = Facility.where(prefectures_id: '47').where(category_id: '1')
    @okinawa_aquarium = Facility.where(prefectures_id: '47').where(category_id: '2')
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
