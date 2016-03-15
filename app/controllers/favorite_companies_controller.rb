class FavoriteCompaniesController < ApplicationController
  before_action :set_company, only: [:create]
	
  def create
    if Favorite.where(user: current_user, favorited_id: @company.id, favorited_type: 'Company').count == 0
      Favorite.create(favorited: @company, user: current_user)
    end
  end
  
  private
  
  def set_company
    @company = Company.find(params[:company_id] || params[:id])
  end
end