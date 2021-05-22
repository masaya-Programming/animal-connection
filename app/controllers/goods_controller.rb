class GoodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_picture

  def create
    @good = Good.create(user_id: current_user.id, picture_id: @picture.id)
    redirect_to user_picture_path(@picture.user_id, @picture)
  end

  def destroy
    @good = Good.find_by(user_id: current_user.id, picture_id: @picture.id)
    @good.destroy
    redirect_to user_picture_path(@picture.user_id, @picture)
  end

  private

  def set_picture
    @picture = Picture.find(params[:picture_id])
  end
end
