class RestaurantsController < ApplicationController

  before_action :authenticate_restaurant!, except: [:search,:show]

  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments.order("created_at DESC")
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
