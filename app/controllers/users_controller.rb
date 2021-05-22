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
    @user.destroy if current_user.id == @user.id
    redirect_to root_path
  end

  def favolist
    @favorites = Favorite.where(user_id: current_user.id)
    @favorites = @favorites.reverse
  end

  def goodlist
    @goods = Good.where(user_id: current_user.id)
    @goods = @goods.reverse
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
