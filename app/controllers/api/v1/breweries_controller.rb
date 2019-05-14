class Api::V1::BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all.limit(20)
    render json: @breweries
  end

  def show
    @brewery = Brewery.find(params[:id])
    render json: @brewery
  end

  def by_city
    @city = params[:by_city]
    @brewery = Brewery.where('lower(city) LIKE ?', "%#{@city.downcase}%")
    render json: @brewery
  end

end
