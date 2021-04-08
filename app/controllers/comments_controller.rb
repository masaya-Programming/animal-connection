class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @comment = Comment.new
    @facility = Facility.find(params[:facility_id])
  end
  
  def create
    @facility = Facility.find(params[:facility_id])
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to facility_path(@facility.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, facility_id: params[:facility_id])
  end

end
