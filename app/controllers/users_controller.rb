class UsersController < ApplicationController
  before_action :authenticate_user!

  before_action :check_if_admin, only: [:edit, :new]

  def index
    @users =  User.where(userType: "volunteer")
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def editz
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to user_path(user)
  end

  def update
    user = User.update user_params
    redirect_to user_path(user)
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    redirect_to users_path
  end

  private

  def check_if_admin
    redirect_to root_path unless user_signed_in? && current_user.admin == true
  end

  def user_params
    params.require(:user).permit(:name, :email, :dob, :city, :gender, :userType)
end
end