class FacilitiesController < ApplicationController
  def index
  end

  def search
    @category_id = params[:category_id]
    @prefectures_id = params[:prefectures_id]
    @facility = Facility.search(params[:category_id], params[:prefectures_id])
    if @facility.length != 0
      @category_name = @facility[0].category.name
      @prefectures_name = @facility[0].prefectures.name 
    end
  end
  
end
