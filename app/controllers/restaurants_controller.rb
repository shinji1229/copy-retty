class RestaurantsController < ApplicationController

  before_action :authenticate_restaurant!

  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  def search
    @restaurants = Restaurant.all
  end

end
