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
    if current_user.id == @user.id
      @user.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
