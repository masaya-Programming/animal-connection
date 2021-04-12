class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_facility, only: [:edit, :update, :destroy]

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
    redirect_to user_path(@comment.user_id) unless user_signed_in? && @current_user.id == @comment.user_id
  end

  def update
    if user_signed_in? && @current_user.id == @comment.user_id
      if @comment.update(comment_edit_params)
        redirect_to user_path(@comment.user_id)
      else
        render :edit
      end
    end
    redirect_to user_path(@comment.user_id)
  end

  def destroy
    @comment.destroy if user_signed_in? && @current_user.id == @comment.user_id
    redirect_to user_path(@comment.user_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, facility_id: params[:facility_id])
  end

  def comment_edit_params
    params.require(:comment).permit(:text).merge(user_id: @comment.user_id, facility_id: @comment.facility_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_facility
    @facility = Facility.find(@comment.facility_id)
  end
end
