class FacilitiesController < ApplicationController
  def index
    @pictures = Picture.order(id: :DESC)
  end

  def show
    @facility = Facility.find(params[:id])
    @comments = Comment.includes(:facility)
    @pictures = Picture.includes(:facility)
  end

  def search
    @category_id = params[:category_id]
    @prefectures_id = params[:prefectures_id]
    @facility = Facility.search(params[:category_id], params[:prefectures_id])
    return true if @facility.empty?

    @category_name = @facility[0].category.name
    @prefectures_name = @facility[0].prefectures.name
    true
  end
end
