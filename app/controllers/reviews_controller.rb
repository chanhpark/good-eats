class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    if @review.save
      redirect_to @restaurant, notice: "You have successfully submitted a Review."
    else
      render "restaurants/show"
    end

    def show
    end

  end

  def review_params
    params.require(:review).permit(:review, :rating, :restaurant_id)
  end
end
