class UsersController < ApplicationController
  def index
    @users = User.all
    @users = User.page(params[:page]).per(3)
  end

  def show
    @user = User.find(params[:id])
  end
end
