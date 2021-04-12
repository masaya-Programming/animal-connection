class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :destroy]
  before_action :set_user, only: [:show, :destroy]

  def mypage
    redirect_to user_path(current_user)
  end

  def show
    @comments = Comment.where(user_id: @user.id)
    @comments = @comments.reverse
    @pictures = Picture.where(user_id: @user.id)
    @pictures = @pictures.reverse
  end

  def destroy
    if user_signed_in? && @current_user.id == @user.id
      if current_user.id == @user.id
        @user.destroy
      else
        redirect_to user_path(@user)
      end
    end
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
