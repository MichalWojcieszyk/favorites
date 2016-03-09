class FavoritePeopleController < ApplicationController
	before_action :set_person, only: [:create]

	def create
    Favorite.create(favorited: @person, user: current_user)
  end
  
  private
  
  def set_person
    @person = Person.find(params[:person_id] || params[:id])
  end
end