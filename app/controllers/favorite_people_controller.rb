class FavoritePeopleController < ApplicationController
  before_action :set_person, only: [:create]

  def create
    if Favorite.where(user: current_user, favorited_id: @person.id, favorited_type: 'Person').count == 0
      Favorite.create(favorited: @person, user: current_user)
    end
  end
  
  private
  
  def set_person
    @person = Person.find(params[:person_id] || params[:id])
  end
end