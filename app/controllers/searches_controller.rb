class SearchesController < ApplicationController
  def new
    @search = Search.new
    @country_codes = Company.uniq.pluck(:country_code)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :country, :min_people, :max_people, :country_code)
  end
end
