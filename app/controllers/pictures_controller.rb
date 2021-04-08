class PicturesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

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
  end

  def update
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :description, :image).merge(user_id: current_user.id, facility_id: params[:facility_id])
  end

end
