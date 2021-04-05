class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :destroy]
  before_action :set_user, only: [:show, :destroy]

  def mypage
    redirect_to user_path(current_user)
  end

  def show
  end

  def destroy
    if current_user.id == @user.id
      @user.destroy
    else
      redirect_to user_path(@user)
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

end
