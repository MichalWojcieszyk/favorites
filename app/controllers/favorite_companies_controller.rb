class FavoriteCompaniesController < ApplicationController
  before_action :set_company, only: [:create, :destroy]

  def create
    Favorite.create(favorited: @company, user: current_user)
    flash[:notice] = 'Person was added to your favorites'
  end

  def destroy
    Favorite.where(favorited_id: @company.id, user_id: current_user.id).first.destroy
    redirect_to favorites_path, notice: 'Company is no longer in your favorites'
  end

  private

  def set_company
    @company = Company.find(params[:company_id] || params[:id])
  end
end
