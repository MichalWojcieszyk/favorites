class FavoriteCompaniesController < ApplicationController
	before_action :set_company, only: [:create]
	
	def create
    Favorite.create(favorited: @company, user: current_user)
  end
  
  private
  
  def set_company
    @company = Company.find(params[:company_id] || params[:id])
  end
end