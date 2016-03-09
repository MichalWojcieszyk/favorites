class CompaniesController < ApplicationController
	expose(:company)
	expose(:companies)
	expose(:person)
  
  def index
  end

  def show
  end

  def favorite
    @fav_company = current_user.favorite_companies.order('created_at DESC').uniq
    @fav_people = current_user.favorite_people.order('created_at DESC').uniq
    @companies_number = current_user.favorite_companies.uniq.length
    @people_number = current_user.favorite_people.uniq.length
  end
end