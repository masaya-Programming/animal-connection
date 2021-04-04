class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def mypage
    redirect_to user_path(current_user)
  end

  def show
  end

  def edit
    unless current_user.id == @user.id
      redirect_to user_path(@user)
    end
  end

  def update
    if current_user.id == @user.id
      if @user.update(user_params)
        redirect_to mypage_user_path(current_user)
      else
        render :edit
      end
    else
      redirect_to user_path(@user)
    end
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
