class FacilitiesController < ApplicationController
  def index
  end

  def search
    @facility = Facility.search(params[:category_id], params[:prefectures_id])
  end
  
end
