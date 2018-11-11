class OpportunitiesController < ApplicationController
  def index
    @opportunities =  Opportunity.all
  end

  def show
    @opportunity = Opportunity.find_by(id: params[:id])
  end

  def edit
    @opportunity = Opportunity.find_by(id: params[:id])
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    opportunity = Opportunity.create opportunity_params
    redirect_to opportunity_path(opportunity)
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

  private

  def opportunity_params
    params.require(:opportunity).permit(:name, :organization_id, :description, :dateOfEvent, :gender, :location)
end
end
