class FavoritePeopleController < ApplicationController
  before_action :set_person, only: [:create, :destroy]

  def create
    Favorite.create(favorited: @person, user: current_user)
    flash[:notice] = "Person was added to your favorites"
  end

  def destroy
    Favorite.where(favorited_id: @person.id, user_id: current_user.id).first.destroy
    redirect_to favorites_path, notice: 'Person is no longer in your favorites'
  end

  private
  
  def set_person
    @person = Person.find(params[:person_id] || params[:id])
  end
end