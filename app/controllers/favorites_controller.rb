class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_facility

  def create
    @favorite = Favorite.create(user_id: current_user.id, facility_id: @facility.id)
    redirect_to facility_path(@facility.id)
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, facility_id: @facility.id)
    @favorite.destroy
    redirect_to facility_path(@facility.id)
  end

  private

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end
end
