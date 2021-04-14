class PicturesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :set_facility, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show]

  def new
    @picture = Picture.new
    @facility = Facility.find(params[:facility_id])
  end

  def create
    @facility = Facility.find(params[:facility_id])
    @picture = Picture.new(picture_params)
    if @picture.valid?
      @picture.save
      redirect_to facility_path(@facility.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to user_picture_path(@picture.user_id, @picture.id) unless user_signed_in? && current_user.id == @picture.user_id
  end

  def update
    if current_user.id == @picture.user_id
      if @picture.update(picture_edit_params)
        redirect_to user_picture_path(@current_user.id, @picture.id)
      else
        render :edit
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user.id == @picture.user_id
      @picture.destroy
      redirect_to mypage_user_path(@current_user.id)
    else
      redirect_to root_path
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :description, :image).merge(user_id: current_user.id,
                                                                        facility_id: params[:facility_id])
  end

  def picture_edit_params
    params.require(:picture).permit(:title, :description, :image).merge(user_id: @picture.user_id,
                                                                        facility_id: @picture.facility_id)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def set_facility
    @facility = Facility.find(@picture.facility_id)
  end

  def set_user
    @user = User.find(@picture.user_id)
  end
end
