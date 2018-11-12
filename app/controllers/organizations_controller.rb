class OrganizationsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin, only: [:edit, :new]


  def index
    @organizations =  User.where(userType: "organization")
  end

  def show
    @organization = User.find_by(id: params[:id])
  end

  def edit
    @organization = User.find_by(id: params[:id])
  end


  private

  def check_if_admin
    redirect_to root_path unless user_signed_in? && current_user.admin == true
  end

  def organization_params
    params.require(:organization).permit(:name, :website, :address)
end
end
