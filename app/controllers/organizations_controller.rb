class OrganizationsController < ApplicationController
  def index
    @organizations =  Organization.all
  end

  def show
    @organization = Organization.find_by(id: params[:id])
  end

  def edit
    @organization = Organization.find_by(id: params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    organization = Organization.create organization_params
    redirect_to organization_path(organization)
  end
  
  def update
    organization = Organization.update organization_params
    redirect_to organization_path(organization)
  end

  def destroy
    organization = Organization.find_by(id: params[:id])
    organization.destroy
    redirect_to organizations_path
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :website, :address)
end
end
