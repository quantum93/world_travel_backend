class ReviewsController < ApplicationController

  def index
    country_name = params[:country]
    if country_name == nil
      @reviews = Review.all
    else
      country = Country.search(params[:country])
      if country[0]
        @reviews = Review.where(country_id: country[0].id)
      else
        @reviews = []
      end
    end
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    # country_id = Country.search(params[:country])
    @review = Review.create(review_params)
    # @review.country_id = country_id
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    json_response(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    if !params[:user_name] || params[:user_name] != @review.user_name
      json_response("You are not authorized to do this!")
    else
      @review.destroy
      json_response(@review)
    end
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def review_params
    params.permit(:rating, :country_id, :content, :user_name)
  end


end
