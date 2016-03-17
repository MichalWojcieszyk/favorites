class CompaniesController < ApplicationController
  expose(:company)
  expose(:companies)
  
  def index
  end

  def show
  end

  def favorite
    @fav_company = current_user.favorite_companies.order('created_at DESC')
    @fav_people = current_user.favorite_people.order('created_at DESC')
    @companies_number = current_user.favorite_companies.length
    @people_number = current_user.favorite_people.length
  end
end
