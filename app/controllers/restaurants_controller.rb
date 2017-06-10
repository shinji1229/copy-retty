class RestaurantsController < ApplicationController

  before_action :authenticate_restaurant!, except: [:searchs,:show]

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

  # def after_sign_in_path_for(resource)
  #   restaurant_path
  # end

  # def after_sign_out_path_for(resource)
  #   entrance_users_path
  # end

end
