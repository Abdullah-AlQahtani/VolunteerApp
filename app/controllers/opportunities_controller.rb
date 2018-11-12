class OpportunitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_organization, only: [:edit, :new, :create, :update]
  before_action :check_if_admin, only: [:edit, :new, :create, :destroy, :update]


  
  def index
    @opportunities =  Opportunity.all
  end

  def show
    @opportunity = Opportunity.find_by(id: params[:id])
    # @app = AppUser.New 
  end

  def edit
    @opportunity = Opportunity.find_by(id: params[:id])

    unless @opportunity.user_id == current_user.id
      redirect_to opportunity_path(@opportunity)
    end

  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.create opportunity_params
    # @opportunity = current_user.opportunities.create opportunity_params
    redirect_to opportunity_path(@opportunity)
    lol = current_user.app_users.create(app_params)
  end

  def update
    opportunity = Opportunity.update opportunity_params
    redirect_to opportunity_path(opportunity)
  end

  def destroy
    opportunity = Opportunity.find_by(id: params[:id])
    opportunity.destroy
    redirect_to opportunities_path
  end

  def join
    AppUser.create(opportunity_id: params[:id], user_id: current_user.id)
    redirect_to request.referer
  end

  def leave
    application = AppUser.find_by(user_id: current_user.id, opportunity_id: params[:id])
    application.destroy
    redirect_to request.referer
  end

  private

  def check_if_admin
    redirect_to root_path unless user_signed_in? && current_user.admin == true
  end

  def check_if_organization
    redirect_to root_path unless user_signed_in? && current_user.userType == "organization"
  end

  def opportunity_params
    params.require(:opportunity).permit(:name, :gender, :description, :dateOfEvent, :location).merge(user_id: current_user.id)
end

def app_params
  params.permit(:opportunity_id, :user_id)
end
end
