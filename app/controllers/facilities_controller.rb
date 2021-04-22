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
    if "0" == params[:category_id] && "0" == params[:prefectures_id]
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
    if "" == params[:keyword]
      redirect_to root_path
    else
      @keyword = params[:keyword]
      @facility = Facility.keysearch(params[:keyword])
    end
  end
end
