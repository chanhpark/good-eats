class RestaurantsController < ApplicationController

  def index
    @all_restaurants = Restaurant.all
  end

  def new
    @new_restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @new_restaurant.save
      redirect_to restaurant_path(@new_restaurant), notice: "You have successfully submitted the restaurant"
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.new
    @review = Review.where(restaurant_id: @restaurant)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode, :description, :category)
  end

end
