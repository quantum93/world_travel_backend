class V1::CountriesController < ApplicationController
  def index
    if params[:name]
      @country = Country.find_by_name(params[:name])
      json_response(@country.reviews)
    else
      @countries = Country.pluck("name")
      json_response(@countries)
    end
  end

  def show
    @country = Country.find(params[:id].to_str)
    @reviews = Review.where(country_id: @country["id"])
    json_response([@country, @reviews])
  end

  def create
    @country = Country.create(country_params)
    json_response(@country)
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
  end

# These two functions are for scopeid,
  def all_countries
    @countries = Country.all_countries
    @return_countries = []
    @countries.each do |country|
      country_arr = [country]
      country_arr.push(Review.where(country_id: country.id))
      @return_countries.push(country_arr)
    end

    json_response(@return_countries)
  end

  def popular_country
    @most_reviews = Country.most_reviews
    json_response(@most_reviews)
  end

  def satisfied_country
    @most_rates = Country.most_rates
    json_response(@most_rates)
  end

# This is for the random selection of country
  def suprising_country
    @random_place = Country.random_place
    @reviews = Review.where(country_id: @random_place[0].id)
    json_response([@random_place, @reviews])
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def country_params
    params.permit(:name)
  end


end
